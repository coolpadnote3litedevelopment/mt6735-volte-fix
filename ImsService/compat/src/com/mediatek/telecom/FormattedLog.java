package com.mediatek.telecom;

public class FormattedLog {
    public enum OpType { NOTIFY }

    private final String mMessage;

    private FormattedLog(String message) {
        mMessage = message;
    }

    @Override
    public String toString() {
        return mMessage;
    }

    public static class Builder {
        private final StringBuilder mSb = new StringBuilder();

        private Builder add(String key, Object value) {
            if (value != null)
                mSb.append(mSb.length() == 0 ? "" : " ").append(key).append('=').append(value);
            return this;
        }

        public Builder setCategory(String v) { return add("category", v); }
        public Builder setServiceName(String v) { return add("service", v); }
        public Builder setOpType(OpType v) { return add("op", v); }
        public Builder setActionName(String v) { return add("action", v); }
        public Builder setCallNumber(String v) { return add("number", v); }
        public Builder setCallId(String v) { return add("callId", v); }
        public Builder setExtraMessage(String v) { return add("msg", v); }

        public FormattedLog buildDebugMsg() {
            return new FormattedLog(mSb.toString());
        }
    }
}
