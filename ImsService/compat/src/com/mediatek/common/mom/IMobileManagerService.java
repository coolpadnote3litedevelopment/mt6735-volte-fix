package com.mediatek.common.mom;

import android.os.IBinder;

public interface IMobileManagerService {
    int checkPermission(String permission, int uid);

    abstract class Stub {
        public static IMobileManagerService asInterface(IBinder binder) {
            return null;
        }
    }
}
