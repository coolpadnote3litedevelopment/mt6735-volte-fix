package com.mediatek.internal.telephony;

import java.util.ArrayList;
import java.util.List;
import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

/* RFC 4575 conference-info parser. */
public class ConferenceCallMessageHandler extends DefaultHandler {
    public static class User {
        private String mEntity;
        private String mEndPoint;
        private String mDisplayText;
        private String mStatus;

        public String getEntity() { return mEntity; }
        public String getEndPoint() { return mEndPoint; }
        public String getDisplayText() { return mDisplayText; }
        public String getStatus() { return mStatus; }
    }

    private final List<User> mUsers = new ArrayList<>();
    private final StringBuilder mText = new StringBuilder();
    private String mHostInfo;
    private User mUser;
    private boolean mInEndpoint;
    private boolean mInHostInfo;

    public String getHostInfo() { return mHostInfo; }
    public List<User> getUsers() { return mUsers; }
    public int getUserCount() { return mUsers.size(); }

    private static String local(String localName, String qName) {
        String name = (localName != null && !localName.isEmpty()) ? localName : qName;
        int colon = name.indexOf(':');
        return colon >= 0 ? name.substring(colon + 1) : name;
    }

    @Override
    public void startElement(String uri, String localName, String qName, Attributes attrs) {
        String name = local(localName, qName);
        mText.setLength(0);
        if ("host-info".equals(name)) {
            mInHostInfo = true;
        } else if ("user".equals(name)) {
            mUser = new User();
            mUser.mEntity = attrs.getValue("entity");
        } else if ("endpoint".equals(name) && mUser != null) {
            mInEndpoint = true;
            if (mUser.mEndPoint == null)
                mUser.mEndPoint = attrs.getValue("entity");
        }
    }

    @Override
    public void characters(char[] ch, int start, int length) {
        mText.append(ch, start, length);
    }

    @Override
    public void endElement(String uri, String localName, String qName) {
        String name = local(localName, qName);
        String text = mText.toString().trim();
        if ("host-info".equals(name)) {
            mInHostInfo = false;
        } else if ("uri".equals(name) && mInHostInfo && mHostInfo == null) {
            mHostInfo = text;
        } else if ("display-text".equals(name) && mUser != null && !mInEndpoint) {
            mUser.mDisplayText = text;
        } else if ("status".equals(name) && mUser != null && mInEndpoint) {
            mUser.mStatus = text;
        } else if ("endpoint".equals(name)) {
            mInEndpoint = false;
        } else if ("user".equals(name) && mUser != null) {
            mUsers.add(mUser);
            mUser = null;
        }
        mText.setLength(0);
    }
}
