package com.mediatek.ims.compat;

import android.os.IBinder;
import android.os.RemoteException;
import android.telephony.SubscriptionManager;
import com.android.ims.ImsCallForwardInfo;
import com.android.ims.ImsCallForwardInfoEx;
import com.android.ims.ImsCallProfile;
import com.android.ims.ImsManager;
import com.android.ims.internal.IImsCallSession;
import com.android.ims.internal.IImsCallSessionListener;
import com.android.ims.internal.IImsConfig;
import com.android.ims.internal.IImsUt;
import com.android.ims.internal.IImsUtListener;
import com.android.ims.internal.IImsVideoCallProvider;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* Stand-ins for MediaTek framework members that the AOSP framework does not have. */
public final class ImsCompat {
    private ImsCompat() {}

    public static void setSpecificEccCategory(int category) {}

    public static int getServiceCategoryFromEcc(String number) {
        return 0;
    }

    public static int getSubIdUsingPhoneId(int phoneId) {
        try {
            Method m = SubscriptionManager.class.getMethod("getSubId", int.class);
            int[] ids = (int[]) m.invoke(null, phoneId);
            if (ids != null && ids.length > 0)
                return ids[0];
        } catch (ReflectiveOperationException e) {
        }
        return -1;
    }

    public static boolean getImsRegInfo(ImsManager manager) {
        try {
            Field f = ImsManager.class.getDeclaredField("mPhoneId");
            f.setAccessible(true);
            int phoneId = f.getInt(manager);
            Class<?> sm = Class.forName("android.os.ServiceManager");
            IBinder ims = (IBinder) sm.getMethod("getService", String.class).invoke(null, "ims");
            if (ims == null)
                return false;
            Method m = ims.getClass().getMethod("getImsRegInfo", int.class);
            return (Boolean) m.invoke(ims, phoneId);
        } catch (ReflectiveOperationException | ClassCastException e) {
            return false;
        }
    }

    private static void callIfPresent(Object target, String name, Class<?>[] types, Object... args) {
        if (target == null)
            return;
        try {
            target.getClass().getMethod(name, types).invoke(target, args);
        } catch (ReflectiveOperationException e) {
        }
    }

    public static void setImsCapability(IImsConfig config, boolean volte, boolean vilte, boolean wfc) {
        callIfPresent(config, "setImsCapability",
                new Class<?>[] { boolean.class, boolean.class, boolean.class }, volte, vilte, wfc);
    }

    public static void setUIMode(IImsVideoCallProvider provider, int mode) {
        callIfPresent(provider, "setUIMode", new Class<?>[] { int.class }, mode);
    }

    public static void callSessionPauInfoChanged(IImsCallSessionListener listener,
            IImsCallSession session, ImsCallProfile profile) {}

    public static void utConfigurationCallForwardInTimeSlotQueried(IImsUtListener listener,
            IImsUt ut, int id, ImsCallForwardInfoEx[] infos) throws RemoteException {
        ImsCallForwardInfo[] out = null;
        if (infos != null) {
            out = new ImsCallForwardInfo[infos.length];
            for (int i = 0; i < infos.length; i++) {
                ImsCallForwardInfo info = new ImsCallForwardInfo();
                info.mCondition = infos[i].mCondition;
                info.mStatus = infos[i].mStatus;
                info.mServiceClass = infos[i].mServiceClass;
                info.mToA = infos[i].mToA;
                info.mNumber = infos[i].mNumber;
                info.mTimeSeconds = infos[i].mTimeSeconds;
                out[i] = info;
            }
        }
        listener.utConfigurationCallForwardQueried(ut, id, out);
    }
}
