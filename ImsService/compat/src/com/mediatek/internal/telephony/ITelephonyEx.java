package com.mediatek.internal.telephony;

import android.os.IBinder;
import android.os.RemoteException;

/* There is no phoneEx service on this ROM; callers fall back when this is null. */
public interface ITelephonyEx {
    int getMainCapabilityPhoneId() throws RemoteException;
    void setTrmForPhone(int phoneId, int mode) throws RemoteException;

    abstract class Stub {
        public static ITelephonyEx asInterface(IBinder binder) {
            return null;
        }
    }
}
