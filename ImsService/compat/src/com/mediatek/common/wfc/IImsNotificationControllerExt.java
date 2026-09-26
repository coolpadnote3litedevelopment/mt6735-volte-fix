package com.mediatek.common.wfc;

import android.content.Context;
import android.content.Intent;

public interface IImsNotificationControllerExt {
    Intent getIntent(int type, Intent intent);
    void register(Context context);
    void unRegister(Context context);
}
