package com.mediatek.telephony;

import android.telephony.TelephonyManager;
import java.lang.reflect.Method;

public class TelephonyManagerEx {
    private static final TelephonyManagerEx sInstance = new TelephonyManagerEx();

    public static TelephonyManagerEx getDefault() {
        return sInstance;
    }

    private static Object call(String name) {
        try {
            TelephonyManager tm = (TelephonyManager) TelephonyManager.class
                    .getMethod("getDefault").invoke(null);
            Method m = TelephonyManager.class.getMethod(name);
            return m.invoke(tm);
        } catch (ReflectiveOperationException e) {
            return null;
        }
    }

    public String getIsimImpi(int subId) {
        return (String) call("getIsimImpi");
    }

    public String[] getIsimImpu(int subId) {
        return (String[]) call("getIsimImpu");
    }
}
