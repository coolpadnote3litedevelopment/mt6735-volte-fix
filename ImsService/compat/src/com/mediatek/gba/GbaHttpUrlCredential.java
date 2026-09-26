package com.mediatek.gba;

import android.content.Context;
import android.net.Network;
import java.net.Authenticator;

/* No GBA bootstrapping on this ROM; XCAP requests go out without GBA credentials. */
public class GbaHttpUrlCredential {
    public GbaHttpUrlCredential(Context context, String nafAddress, int subId) {}

    public Authenticator getAuthenticator() {
        return null;
    }

    public void setNetwork(Network network) {}
}
