.class public Lcom/mediatek/ims/MMTelSSUtils;
.super Ljava/lang/Object;
.source "MMTelSSUtils.java"


# static fields
.field private static IS_ENG_BUILD:Z = false

.field private static IS_USER_BUILD:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "MMTelSSUtils"

.field private static final MCCMNC_BLOCK_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MODE_SS_CS:Ljava/lang/String; = "Prefer CS"

.field private static final MODE_SS_XCAP:Ljava/lang/String; = "Prefer XCAP"

.field private static final NEED_COUNTRY_CODE_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP01_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP03_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP05_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP06_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP06_NETHERLANDS_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP07_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP08_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP112_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP11_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP120_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP124_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP130_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP15_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP18_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP19_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROP_SS_MODE:Ljava/lang/String; = "persist.radio.ss.mode"

.field private static final SPFICFIC_OP_PORTUGAL_VDF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static queryXcapSrvDone:Z

.field static remoteIp:Ljava/lang/String;

.field static sXcapUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/ims/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    .line 80
    sput-boolean v3, Lcom/mediatek/ims/MMTelSSUtils;->queryXcapSrvDone:Z

    .line 87
    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/MMTelSSUtils;->IS_USER_BUILD:Z

    .line 88
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/MMTelSSUtils;->IS_ENG_BUILD:Z

    .line 91
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "46000"

    aput-object v1, v0, v3

    const-string/jumbo v1, "46002"

    aput-object v1, v0, v4

    .line 92
    const-string/jumbo v1, "46007"

    aput-object v1, v0, v5

    const-string/jumbo v1, "46008"

    aput-object v1, v0, v6

    .line 91
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/MMTelSSUtils;->OP01_MCCMNC_LIST:Ljava/util/List;

    .line 95
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "20801"

    aput-object v1, v0, v3

    const-string/jumbo v1, "20802"

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/MMTelSSUtils;->OP03_MCCMNC_LIST:Ljava/util/List;

    .line 98
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "26201"

    aput-object v1, v0, v3

    const-string/jumbo v1, "26206"

    aput-object v1, v0, v4

    .line 99
    const-string/jumbo v1, "26278"

    aput-object v1, v0, v5

    .line 98
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/MMTelSSUtils;->OP05_MCCMNC_LIST:Ljava/util/List;

    .line 101
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "26202"

    aput-object v1, v0, v3

    const-string/jumbo v1, "26204"

    aput-object v1, v0, v4

    .line 102
    const-string/jumbo v1, "26209"

    aput-object v1, v0, v5

    const-string/jumbo v1, "20205"

    aput-object v1, v0, v6

    const-string/jumbo v1, "21670"

    aput-object v1, v0, v7

    const-string/jumbo v1, "27402"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "27403"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "27201"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "22210"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "27801"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 103
    const-string/jumbo v1, "26801"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "22601"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "21401"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "21406"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "28602"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "23415"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "23591"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "90128"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 101
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/MMTelSSUtils;->OP06_MCCMNC_LIST:Ljava/util/List;

    .line 105
    new-array v0, v4, [Ljava/lang/String;

    .line 106
    const-string/jumbo v1, "20404"

    aput-object v1, v0, v3

    .line 105
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/MMTelSSUtils;->OP06_NETHERLANDS_MCCMNC_LIST:Ljava/util/List;

    .line 108
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "31030"

    aput-object v1, v0, v3

    const-string/jumbo v1, "31080"

    aput-object v1, v0, v4

    .line 109
    const-string/jumbo v1, "310150"

    aput-object v1, v0, v5

    const-string/jumbo v1, "310170"

    aput-object v1, v0, v6

    const-string/jumbo v1, "310280"

    aput-object v1, v0, v7

    const-string/jumbo v1, "310380"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "310410"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "310560"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "310680"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 108
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/MMTelSSUtils;->OP07_MCCMNC_LIST:Ljava/util/List;

    .line 111
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "23203"

    aput-object v1, v0, v3

    const-string/jumbo v1, "23204"

    aput-object v1, v0, v4

    .line 112
    const-string/jumbo v1, "21901"

    aput-object v1, v0, v5

    const-string/jumbo v1, "23001"

    aput-object v1, v0, v6

    const-string/jumbo v1, "21630"

    aput-object v1, v0, v7

    const-string/jumbo v1, "29702"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "20416"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "20420"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "26002"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "22004"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "23430"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 113
    const-string/jumbo v1, "310160"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "310260"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "310490"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "310580"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "310660"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 111
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/MMTelSSUtils;->OP08_MCCMNC_LIST:Ljava/util/List;

    .line 115
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "23420"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/MMTelSSUtils;->OP11_MCCMNC_LIST:Ljava/util/List;

    .line 117
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "26203"

    aput-object v1, v0, v3

    const-string/jumbo v1, "26207"

    aput-object v1, v0, v4

    .line 118
    const-string/jumbo v1, "26208"

    aput-object v1, v0, v5

    const-string/jumbo v1, "26211"

    aput-object v1, v0, v6

    const-string/jumbo v1, "26277"

    aput-object v1, v0, v7

    .line 117
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/MMTelSSUtils;->OP15_MCCMNC_LIST:Ljava/util/List;

    .line 121
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "405854"

    aput-object v1, v0, v3

    .line 122
    const-string/jumbo v1, "405855"

    aput-object v1, v0, v4

    .line 123
    const-string/jumbo v1, "405856"

    aput-object v1, v0, v5

    .line 124
    const-string/jumbo v1, "405872"

    aput-object v1, v0, v6

    .line 125
    const-string/jumbo v1, "405857"

    aput-object v1, v0, v7

    .line 126
    const-string/jumbo v1, "405858"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 127
    const-string/jumbo v1, "405859"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 128
    const-string/jumbo v1, "405860"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 129
    const-string/jumbo v1, "405861"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 130
    const-string/jumbo v1, "405862"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 131
    const-string/jumbo v1, "405873"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 132
    const-string/jumbo v1, "405863"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 133
    const-string/jumbo v1, "405864"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 134
    const-string/jumbo v1, "405874"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 135
    const-string/jumbo v1, "405865"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 136
    const-string/jumbo v1, "405866"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 137
    const-string/jumbo v1, "405867"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 138
    const-string/jumbo v1, "405868"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 139
    const-string/jumbo v1, "405869"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 140
    const-string/jumbo v1, "405871"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 141
    const-string/jumbo v1, "405870"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 142
    const-string/jumbo v1, "405840"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 121
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/MMTelSSUtils;->OP18_MCCMNC_LIST:Ljava/util/List;

    .line 145
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "50501"

    aput-object v1, v0, v3

    .line 146
    const-string/jumbo v1, "50511"

    aput-object v1, v0, v4

    const-string/jumbo v1, "50571"

    aput-object v1, v0, v5

    const-string/jumbo v1, "50572"

    aput-object v1, v0, v6

    .line 145
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/MMTelSSUtils;->OP19_MCCMNC_LIST:Ljava/util/List;

    .line 149
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "334020"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/MMTelSSUtils;->OP112_MCCMNC_LIST:Ljava/util/List;

    .line 152
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "46605"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/MMTelSSUtils;->OP124_MCCMNC_LIST:Ljava/util/List;

    .line 155
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "732101"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/MMTelSSUtils;->OP120_MCCMNC_LIST:Ljava/util/List;

    .line 158
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "22201"

    aput-object v1, v0, v3

    .line 159
    const-string/jumbo v1, "22243"

    aput-object v1, v0, v4

    const-string/jumbo v1, "22248"

    aput-object v1, v0, v5

    .line 158
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/MMTelSSUtils;->OP130_MCCMNC_LIST:Ljava/util/List;

    .line 161
    new-array v0, v4, [Ljava/lang/String;

    .line 162
    const-string/jumbo v1, "26801"

    aput-object v1, v0, v3

    .line 161
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/MMTelSSUtils;->NEED_COUNTRY_CODE_MCCMNC_LIST:Ljava/util/List;

    .line 165
    new-array v0, v4, [Ljava/lang/String;

    .line 166
    const-string/jumbo v1, "26801"

    aput-object v1, v0, v3

    .line 165
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/MMTelSSUtils;->SPFICFIC_OP_PORTUGAL_VDF:Ljava/util/List;

    .line 169
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "22210"

    aput-object v1, v0, v3

    .line 170
    const-string/jumbo v1, "23003"

    aput-object v1, v0, v4

    const-string/jumbo v1, "23099"

    aput-object v1, v0, v5

    .line 171
    const-string/jumbo v1, "46601"

    aput-object v1, v0, v6

    const-string/jumbo v1, "46602"

    aput-object v1, v0, v7

    const-string/jumbo v1, "46603"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "46606"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "46607"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "46688"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 172
    const-string/jumbo v1, "46697"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 173
    const-string/jumbo v1, "52004"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "52099"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 174
    const-string/jumbo v1, "28602"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 169
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/MMTelSSUtils;->MCCMNC_BLOCK_LIST:Ljava/util/List;

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addXcapRootPort(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .param p0, "xcapRoot"    # Ljava/lang/String;
    .param p1, "phoneId"    # I

    .prologue
    const/16 v3, 0x3a

    const/4 v2, 0x0

    .line 878
    const-string/jumbo v0, "http"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 879
    const-string/jumbo v0, "https"

    .line 880
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 879
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 878
    if-eqz v0, :cond_6b

    .line 881
    :cond_25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_3d

    .line 882
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 885
    :cond_3d
    invoke-static {p1}, Lcom/mediatek/ims/MMTelSSUtils;->isOp18IccCard(I)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":7077"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 892
    :cond_57
    :goto_57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 896
    :cond_6b
    return-object p0

    .line 887
    :cond_6c
    invoke-static {p1}, Lcom/mediatek/ims/MMTelSSUtils;->isOp130IccCard(I)Z

    move-result v0

    if-nez v0, :cond_78

    .line 888
    invoke-static {p1}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06NetherlandsIccCard(I)Z

    move-result v0

    .line 887
    if-eqz v0, :cond_57

    .line 889
    :cond_78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":8080"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_57
.end method

.method public static appendCountryCode(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10
    .param p0, "dialNumber"    # Ljava/lang/String;
    .param p1, "phoneId"    # I

    .prologue
    const/4 v7, 0x0

    .line 955
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v2

    .line 956
    .local v2, "currIso":Ljava/lang/String;
    const-string/jumbo v4, "MMTelSSUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "currIso: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v0

    .line 960
    .local v0, "countryCode":I
    if-nez v0, :cond_3b

    .line 961
    const-string/jumbo v4, "MMTelSSUtils"

    const-string/jumbo v5, "Country code not found."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    return-object p0

    .line 965
    :cond_3b
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 967
    .local v1, "countryCodeStr":Ljava/lang/String;
    if-eqz p0, :cond_49

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_49

    if-nez v1, :cond_4a

    .line 968
    :cond_49
    return-object p0

    .line 971
    :cond_4a
    const/4 v4, 0x1

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 972
    const-string/jumbo v4, "MMTelSSUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No need to append country code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    return-object p0

    .line 975
    :cond_73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 976
    .local v3, "dialNumberWithCountryCode":Ljava/lang/String;
    const-string/jumbo v4, "MMTelSSUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "dialNumberWithCountryCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    return-object v3
.end method

.method public static getDefaultImsPhoneId(Landroid/content/Context;)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 913
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .line 916
    .local v2, "phoneCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v2, :cond_4e

    .line 917
    :try_start_b
    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/ims/compat/ImsCompat;->getImsRegInfo(Lcom/android/ims/ImsManager;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 918
    const-string/jumbo v3, "MMTelSSUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDefaultImsPhoneId(): IMS registered. phoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Lcom/android/ims/ImsException; {:try_start_b .. :try_end_2f} :catch_33

    .line 919
    return v1

    .line 916
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 922
    :catch_33
    move-exception v0

    .line 923
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string/jumbo v3, "MMTelSSUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDefaultImsPhoneId(): ImsException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :cond_4e
    const/4 v3, -0x1

    return v3
.end method

.method public static getHttpCredentialPassword()Ljava/lang/String;
    .registers 1

    .prologue
    .line 443
    const-string/jumbo v0, ""

    .line 445
    .local v0, "sPassword":Ljava/lang/String;
    return-object v0
.end method

.method public static getHttpCredentialUserName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 436
    const-string/jumbo v0, ""

    .line 438
    .local v0, "sUserName":Ljava/lang/String;
    return-object v0
.end method

.method public static getXIntendedId(ILandroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 406
    invoke-static {p0, p1}, Lcom/mediatek/ims/MMTelSSUtils;->getXui(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getXcapRootUri(I)Ljava/lang/String;
    .registers 14
    .param p0, "phoneId"    # I

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 184
    const-string/jumbo v7, "ro.mtk_bsp_package"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 185
    const-string/jumbo v7, ""

    return-object v7

    .line 187
    :cond_18
    invoke-static {}, Lcom/mediatek/simservs/client/SimServs;->getInstance()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v5

    .line 189
    .local v5, "simSrv":Lcom/mediatek/simservs/client/SimServs;
    invoke-static {p0}, Lcom/mediatek/ims/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 190
    invoke-virtual {v5, v9}, Lcom/mediatek/simservs/client/SimServs;->setUseHttpProtocolScheme(Z)V

    .line 191
    invoke-virtual {v5, v9, v11}, Lcom/mediatek/simservs/client/SimServs;->setElementUpdateContentType(ZLjava/lang/String;)V

    .line 192
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setHandleError409(Z)V

    .line 193
    invoke-virtual {v5, v9}, Lcom/mediatek/simservs/client/SimServs;->setFillCompleteForwardTo(Z)V

    .line 194
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setXcapNSPrefixSS(Z)V

    .line 277
    :goto_31
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/SimServs;->getXcapRoot()Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, "rootUri":Ljava/lang/String;
    const-string/jumbo v7, "MMTelSSUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getXcapRootUri():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-static {p0}, Lcom/mediatek/ims/compat/ImsCompat;->getSubIdUsingPhoneId(I)I

    move-result v6

    .line 280
    .local v6, "subId":I
    if-nez v4, :cond_5a

    .line 283
    if-eqz v4, :cond_189

    .line 285
    invoke-virtual {v5, v4}, Lcom/mediatek/simservs/client/SimServs;->setXcapRoot(Ljava/lang/String;)V

    .line 327
    :cond_5a
    :goto_5a
    return-object v4

    .line 195
    .end local v4    # "rootUri":Ljava/lang/String;
    .end local v6    # "subId":I
    :cond_5b
    invoke-static {p0}, Lcom/mediatek/ims/MMTelSSUtils;->isOp03IccCard(I)Z

    move-result v7

    if-eqz v7, :cond_71

    .line 196
    invoke-virtual {v5, v9}, Lcom/mediatek/simservs/client/SimServs;->setUseHttpProtocolScheme(Z)V

    .line 197
    invoke-virtual {v5, v9, v11}, Lcom/mediatek/simservs/client/SimServs;->setElementUpdateContentType(ZLjava/lang/String;)V

    .line 198
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setHandleError409(Z)V

    .line 199
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setFillCompleteForwardTo(Z)V

    .line 200
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setXcapNSPrefixSS(Z)V

    goto :goto_31

    .line 201
    :cond_71
    invoke-static {p0}, Lcom/mediatek/ims/MMTelSSUtils;->isOp05IccCard(I)Z

    move-result v7

    if-eqz v7, :cond_87

    .line 202
    invoke-virtual {v5, v9}, Lcom/mediatek/simservs/client/SimServs;->setUseHttpProtocolScheme(Z)V

    .line 203
    invoke-virtual {v5, v9, v11}, Lcom/mediatek/simservs/client/SimServs;->setElementUpdateContentType(ZLjava/lang/String;)V

    .line 204
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setHandleError409(Z)V

    .line 205
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setFillCompleteForwardTo(Z)V

    .line 206
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setXcapNSPrefixSS(Z)V

    goto :goto_31

    .line 207
    :cond_87
    invoke-static {p0}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v7

    if-nez v7, :cond_93

    .line 208
    invoke-static {p0}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06NetherlandsIccCard(I)Z

    move-result v7

    .line 207
    if-eqz v7, :cond_a3

    .line 209
    :cond_93
    invoke-virtual {v5, v9}, Lcom/mediatek/simservs/client/SimServs;->setUseHttpProtocolScheme(Z)V

    .line 210
    invoke-virtual {v5, v9, v11}, Lcom/mediatek/simservs/client/SimServs;->setElementUpdateContentType(ZLjava/lang/String;)V

    .line 211
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setHandleError409(Z)V

    .line 212
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setFillCompleteForwardTo(Z)V

    .line 213
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setXcapNSPrefixSS(Z)V

    goto :goto_31

    .line 214
    :cond_a3
    invoke-static {p0}, Lcom/mediatek/ims/MMTelSSUtils;->isOp07IccCard(I)Z

    move-result v7

    if-eqz v7, :cond_ba

    .line 215
    invoke-virtual {v5, v9}, Lcom/mediatek/simservs/client/SimServs;->setUseHttpProtocolScheme(Z)V

    .line 216
    invoke-virtual {v5, v9, v11}, Lcom/mediatek/simservs/client/SimServs;->setElementUpdateContentType(ZLjava/lang/String;)V

    .line 217
    invoke-virtual {v5, v9}, Lcom/mediatek/simservs/client/SimServs;->setHandleError409(Z)V

    .line 218
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setFillCompleteForwardTo(Z)V

    .line 219
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setXcapNSPrefixSS(Z)V

    goto/16 :goto_31

    .line 220
    :cond_ba
    invoke-static {p0}, Lcom/mediatek/ims/MMTelSSUtils;->isOp11IccCard(I)Z

    move-result v7

    if-eqz v7, :cond_d1

    .line 221
    invoke-virtual {v5, v9}, Lcom/mediatek/simservs/client/SimServs;->setUseHttpProtocolScheme(Z)V

    .line 222
    invoke-virtual {v5, v9, v11}, Lcom/mediatek/simservs/client/SimServs;->setElementUpdateContentType(ZLjava/lang/String;)V

    .line 223
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setHandleError409(Z)V

    .line 224
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setFillCompleteForwardTo(Z)V

    .line 225
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setXcapNSPrefixSS(Z)V

    goto/16 :goto_31

    .line 226
    :cond_d1
    invoke-static {p0}, Lcom/mediatek/ims/MMTelSSUtils;->isOp15IccCard(I)Z

    move-result v7

    if-eqz v7, :cond_e8

    .line 227
    invoke-virtual {v5, v9}, Lcom/mediatek/simservs/client/SimServs;->setUseHttpProtocolScheme(Z)V

    .line 228
    invoke-virtual {v5, v9, v11}, Lcom/mediatek/simservs/client/SimServs;->setElementUpdateContentType(ZLjava/lang/String;)V

    .line 229
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setHandleError409(Z)V

    .line 230
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setFillCompleteForwardTo(Z)V

    .line 231
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setXcapNSPrefixSS(Z)V

    goto/16 :goto_31

    .line 232
    :cond_e8
    invoke-static {p0}, Lcom/mediatek/ims/MMTelSSUtils;->isOp18IccCard(I)Z

    move-result v7

    if-eqz v7, :cond_ff

    .line 233
    invoke-virtual {v5, v9}, Lcom/mediatek/simservs/client/SimServs;->setUseHttpProtocolScheme(Z)V

    .line 234
    invoke-virtual {v5, v9, v11}, Lcom/mediatek/simservs/client/SimServs;->setElementUpdateContentType(ZLjava/lang/String;)V

    .line 235
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setHandleError409(Z)V

    .line 236
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setFillCompleteForwardTo(Z)V

    .line 237
    invoke-virtual {v5, v9}, Lcom/mediatek/simservs/client/SimServs;->setXcapNSPrefixSS(Z)V

    goto/16 :goto_31

    .line 238
    :cond_ff
    invoke-static {p0}, Lcom/mediatek/ims/MMTelSSUtils;->isOp19IccCard(I)Z

    move-result v7

    if-eqz v7, :cond_116

    .line 239
    invoke-virtual {v5, v9}, Lcom/mediatek/simservs/client/SimServs;->setUseHttpProtocolScheme(Z)V

    .line 240
    invoke-virtual {v5, v9, v11}, Lcom/mediatek/simservs/client/SimServs;->setElementUpdateContentType(ZLjava/lang/String;)V

    .line 241
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setHandleError409(Z)V

    .line 242
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setFillCompleteForwardTo(Z)V

    .line 243
    invoke-virtual {v5, v9}, Lcom/mediatek/simservs/client/SimServs;->setXcapNSPrefixSS(Z)V

    goto/16 :goto_31

    .line 244
    :cond_116
    invoke-static {p0}, Lcom/mediatek/ims/MMTelSSUtils;->isOp112IccCard(I)Z

    move-result v7

    if-eqz v7, :cond_12d

    .line 245
    invoke-virtual {v5, v9}, Lcom/mediatek/simservs/client/SimServs;->setUseHttpProtocolScheme(Z)V

    .line 246
    invoke-virtual {v5, v9, v11}, Lcom/mediatek/simservs/client/SimServs;->setElementUpdateContentType(ZLjava/lang/String;)V

    .line 247
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setHandleError409(Z)V

    .line 248
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setFillCompleteForwardTo(Z)V

    .line 249
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setXcapNSPrefixSS(Z)V

    goto/16 :goto_31

    .line 250
    :cond_12d
    invoke-static {p0}, Lcom/mediatek/ims/MMTelSSUtils;->isOp120IccCard(I)Z

    move-result v7

    if-eqz v7, :cond_144

    .line 251
    invoke-virtual {v5, v9}, Lcom/mediatek/simservs/client/SimServs;->setUseHttpProtocolScheme(Z)V

    .line 252
    invoke-virtual {v5, v9, v11}, Lcom/mediatek/simservs/client/SimServs;->setElementUpdateContentType(ZLjava/lang/String;)V

    .line 253
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setHandleError409(Z)V

    .line 254
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setFillCompleteForwardTo(Z)V

    .line 255
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setXcapNSPrefixSS(Z)V

    goto/16 :goto_31

    .line 256
    :cond_144
    invoke-static {p0}, Lcom/mediatek/ims/MMTelSSUtils;->isOp124IccCard(I)Z

    move-result v7

    if-eqz v7, :cond_15b

    .line 257
    invoke-virtual {v5, v9}, Lcom/mediatek/simservs/client/SimServs;->setUseHttpProtocolScheme(Z)V

    .line 258
    invoke-virtual {v5, v9, v11}, Lcom/mediatek/simservs/client/SimServs;->setElementUpdateContentType(ZLjava/lang/String;)V

    .line 259
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setHandleError409(Z)V

    .line 260
    invoke-virtual {v5, v9}, Lcom/mediatek/simservs/client/SimServs;->setFillCompleteForwardTo(Z)V

    .line 261
    invoke-virtual {v5, v9}, Lcom/mediatek/simservs/client/SimServs;->setXcapNSPrefixSS(Z)V

    goto/16 :goto_31

    .line 262
    :cond_15b
    invoke-static {p0}, Lcom/mediatek/ims/MMTelSSUtils;->isOp130IccCard(I)Z

    move-result v7

    if-eqz v7, :cond_178

    .line 263
    invoke-virtual {v5, v9}, Lcom/mediatek/simservs/client/SimServs;->setUseHttpProtocolScheme(Z)V

    .line 264
    invoke-virtual {v5, v9, v11}, Lcom/mediatek/simservs/client/SimServs;->setElementUpdateContentType(ZLjava/lang/String;)V

    .line 265
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setHandleError409(Z)V

    .line 266
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setFillCompleteForwardTo(Z)V

    .line 267
    invoke-virtual {v5, v9}, Lcom/mediatek/simservs/client/SimServs;->setXcapNSPrefixSS(Z)V

    .line 268
    const-string/jumbo v7, "mtasxdms/simservs.ngn.etsi.org"

    invoke-virtual {v5, v7}, Lcom/mediatek/simservs/client/SimServs;->setAUID(Ljava/lang/String;)V

    goto/16 :goto_31

    .line 270
    :cond_178
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setUseHttpProtocolScheme(Z)V

    .line 271
    invoke-virtual {v5, v9, v11}, Lcom/mediatek/simservs/client/SimServs;->setElementUpdateContentType(ZLjava/lang/String;)V

    .line 272
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setHandleError409(Z)V

    .line 273
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setFillCompleteForwardTo(Z)V

    .line 274
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/SimServs;->setXcapNSPrefixSS(Z)V

    goto/16 :goto_31

    .line 289
    .restart local v4    # "rootUri":Ljava/lang/String;
    .restart local v6    # "subId":I
    :cond_189
    const/4 v0, 0x0

    .line 290
    .local v0, "impi":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/mediatek/telephony/TelephonyManagerEx;->getIsimImpi(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "impi":Ljava/lang/String;
    if-eqz v0, :cond_19a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_26a

    .line 296
    :cond_19a
    const/4 v2, 0x0

    .line 297
    .local v2, "mccMnc":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "mccMnc":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 299
    .local v1, "mcc":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 300
    .local v3, "mnc":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1b7

    .line 301
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-virtual {v2, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 305
    :cond_1b7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1ed

    .line 306
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 307
    const-string/jumbo v7, "MMTelSSUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "add 0 to mnc ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_1ed
    const-string/jumbo v7, "MMTelSSUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "get mccMnc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " from the IccRecrods"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_24a

    .line 312
    const-string/jumbo v7, "460000"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_241

    const-string/jumbo v7, "460002"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_241

    .line 313
    const-string/jumbo v7, "460007"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 312
    if-nez v7, :cond_241

    .line 313
    const-string/jumbo v7, "460008"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 312
    if-nez v7, :cond_241

    .line 314
    const-string/jumbo v7, "460011"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 312
    if-eqz v7, :cond_288

    .line 315
    :cond_241
    const-string/jumbo v7, "460"

    const-string/jumbo v8, "000"

    invoke-virtual {v5, v7, v8}, Lcom/mediatek/simservs/client/SimServs;->setXcapRootByMccMnc(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .end local v1    # "mcc":Ljava/lang/String;
    .end local v2    # "mccMnc":Ljava/lang/String;
    .end local v3    # "mnc":Ljava/lang/String;
    :cond_24a
    :goto_24a
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/SimServs;->getXcapRoot()Ljava/lang/String;

    move-result-object v4

    .line 323
    const-string/jumbo v7, "MMTelSSUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getXcapRoot():rootUri="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 293
    :cond_26a
    const-string/jumbo v7, "MMTelSSUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getXcapRootUri():get APP_FAM_IMS and impi="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {v5, v0}, Lcom/mediatek/simservs/client/SimServs;->setXcapRootByImpi(Ljava/lang/String;)V

    goto :goto_24a

    .line 317
    .restart local v1    # "mcc":Ljava/lang/String;
    .restart local v2    # "mccMnc":Ljava/lang/String;
    .restart local v3    # "mnc":Ljava/lang/String;
    :cond_288
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 318
    invoke-virtual {v2, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 317
    invoke-virtual {v5, v7, v8}, Lcom/mediatek/simservs/client/SimServs;->setXcapRootByMccMnc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24a
.end method

.method public static getXui(ILandroid/content/Context;)Ljava/lang/String;
    .registers 15
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    .line 336
    invoke-static {}, Lcom/mediatek/simservs/client/SimServs;->getInstance()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v5

    .line 337
    .local v5, "simSrv":Lcom/mediatek/simservs/client/SimServs;
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/SimServs;->getXui()Ljava/lang/String;

    move-result-object v4

    .line 338
    .local v4, "sXui":Ljava/lang/String;
    const-string/jumbo v8, "MMTelSSUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getXui():sXui from simSrv="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-static {p0}, Lcom/mediatek/ims/compat/ImsCompat;->getSubIdUsingPhoneId(I)I

    move-result v6

    .line 340
    .local v6, "subId":I
    if-nez v4, :cond_100

    .line 352
    invoke-static {}, Lcom/mediatek/ims/internal/ImsXuiManager;->getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/mediatek/ims/internal/ImsXuiManager;->getXui(I)Ljava/lang/String;

    move-result-object v4

    .line 353
    const-string/jumbo v8, "MMTelSSUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getXui():sXui from XuiManager="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    if-eqz v4, :cond_5b

    .line 355
    const-string/jumbo v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v4, v8, v11

    .line 356
    invoke-virtual {v5, v4}, Lcom/mediatek/simservs/client/SimServs;->setXui(Ljava/lang/String;)V

    .line 357
    return-object v4

    .line 362
    :cond_5b
    const-string/jumbo v2, ""

    .line 363
    .local v2, "sImpu":Ljava/lang/String;
    const/4 v0, 0x0

    .line 364
    .local v0, "impu":[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/mediatek/telephony/TelephonyManagerEx;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "impu":[Ljava/lang/String;
    if-eqz v0, :cond_a7

    .line 367
    aget-object v2, v0, v11

    .line 368
    const-string/jumbo v8, "MMTelSSUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getXui():sImpu="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {v5, v2}, Lcom/mediatek/simservs/client/SimServs;->setXuiByImpu(Ljava/lang/String;)V

    .line 388
    :cond_88
    :goto_88
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/SimServs;->getXui()Ljava/lang/String;

    move-result-object v4

    .line 389
    const-string/jumbo v8, "MMTelSSUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getXui():sXui="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-object v4

    .line 373
    :cond_a7
    const-string/jumbo v8, "phone"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 375
    .local v7, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Lcom/mediatek/ims/compat/ImsCompat;->getSubIdUsingPhoneId(I)I

    move-result v8

    .line 374
    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    .line 376
    .local v3, "sImsi":Ljava/lang/String;
    const-string/jumbo v8, "MMTelSSUtils"

    const-string/jumbo v9, "getXui():IMS uiccApp is null, try to select USIM uiccApp"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "mccMnc":Ljava/lang/String;
    const-string/jumbo v8, "MMTelSSUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getXui():Imsi="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", mccMnc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_88

    .line 382
    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 383
    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 382
    invoke-virtual {v5, v3, v8, v9}, Lcom/mediatek/simservs/client/SimServs;->setXuiByImsiMccMnc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_88

    .line 393
    .end local v0    # "impu":[Ljava/lang/String;
    .end local v1    # "mccMnc":Ljava/lang/String;
    .end local v2    # "sImpu":Ljava/lang/String;
    .end local v3    # "sImsi":Ljava/lang/String;
    .end local v7    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_100
    const-string/jumbo v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v4, v8, v11

    .line 394
    return-object v4
.end method

.method public static isNeedAppendCountryCode(I)Z
    .registers 6
    .param p0, "phoneId"    # I

    .prologue
    .line 937
    const-string/jumbo v2, "ro.mtk_bsp_package"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 938
    const/4 v2, 0x0

    return v2

    .line 941
    :cond_12
    invoke-static {p0}, Lcom/mediatek/ims/compat/ImsCompat;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 942
    .local v1, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 943
    .local v0, "mccMnc":Ljava/lang/String;
    const-string/jumbo v2, "MMTelSSUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isNeedAppendCountryCode(): mccMnc is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    sget-object v2, Lcom/mediatek/ims/MMTelSSUtils;->NEED_COUNTRY_CODE_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static isNotSupportXcap(I)Z
    .registers 6
    .param p0, "phoneId"    # I

    .prologue
    .line 930
    invoke-static {p0}, Lcom/mediatek/ims/compat/ImsCompat;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 931
    .local v1, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 932
    .local v0, "mccMnc":Ljava/lang/String;
    const-string/jumbo v2, "MMTelSSUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isNotSupportXcap, mccMnc is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    sget-object v2, Lcom/mediatek/ims/MMTelSSUtils;->MCCMNC_BLOCK_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static isNotifyCallerTest()Z
    .registers 2

    .prologue
    .line 900
    const-string/jumbo v0, "persist.xcap.notifycaller.test"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 901
    const/4 v0, 0x1

    return v0

    .line 903
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public static isOp01IccCard(I)Z
    .registers 6
    .param p0, "phoneId"    # I

    .prologue
    .line 693
    const-string/jumbo v2, "ro.mtk_bsp_package"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 694
    const/4 v2, 0x0

    return v2

    .line 697
    :cond_12
    invoke-static {p0}, Lcom/mediatek/ims/compat/ImsCompat;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 698
    .local v1, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, "mccMnc":Ljava/lang/String;
    const-string/jumbo v2, "MMTelSSUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isOp01IccCard(): mccMnc is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    sget-object v2, Lcom/mediatek/ims/MMTelSSUtils;->OP01_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static isOp03IccCard(I)Z
    .registers 7
    .param p0, "phoneId"    # I

    .prologue
    .line 704
    const-string/jumbo v3, "ro.mtk_bsp_package"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 705
    const/4 v3, 0x0

    return v3

    .line 708
    :cond_12
    invoke-static {p0}, Lcom/mediatek/ims/compat/ImsCompat;->getSubIdUsingPhoneId(I)I

    move-result v2

    .line 709
    .local v2, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, "mccMnc":Ljava/lang/String;
    const-string/jumbo v3, "MMTelSSUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isOp03IccCard(): mccMnc is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    sget-object v3, Lcom/mediatek/ims/MMTelSSUtils;->OP03_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 712
    .local v1, "retVal":Z
    const-string/jumbo v3, "MMTelSSUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isOp03IccCard()=>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    return v1
.end method

.method public static isOp05IccCard(I)Z
    .registers 7
    .param p0, "phoneId"    # I

    .prologue
    .line 717
    const-string/jumbo v3, "ro.mtk_bsp_package"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 718
    const/4 v3, 0x0

    return v3

    .line 721
    :cond_12
    invoke-static {p0}, Lcom/mediatek/ims/compat/ImsCompat;->getSubIdUsingPhoneId(I)I

    move-result v2

    .line 722
    .local v2, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, "mccMnc":Ljava/lang/String;
    const-string/jumbo v3, "MMTelSSUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isOp05IccCard(): mccMnc is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    sget-object v3, Lcom/mediatek/ims/MMTelSSUtils;->OP05_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 725
    .local v1, "retVal":Z
    const-string/jumbo v3, "MMTelSSUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isOp05IccCard()=>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    return v1
.end method

.method public static isOp06IccCard(I)Z
    .registers 7
    .param p0, "phoneId"    # I

    .prologue
    .line 730
    const-string/jumbo v3, "ro.mtk_bsp_package"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 731
    const/4 v3, 0x0

    return v3

    .line 734
    :cond_12
    invoke-static {p0}, Lcom/mediatek/ims/compat/ImsCompat;->getSubIdUsingPhoneId(I)I

    move-result v2

    .line 735
    .local v2, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, "mccMnc":Ljava/lang/String;
    const-string/jumbo v3, "MMTelSSUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isOp06IccCard(): mccMnc is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    sget-object v3, Lcom/mediatek/ims/MMTelSSUtils;->OP06_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 738
    .local v1, "retVal":Z
    const-string/jumbo v3, "MMTelSSUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isOp06IccCard()=>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    return v1
.end method

.method public static isOp06NetherlandsIccCard(I)Z
    .registers 7
    .param p0, "phoneId"    # I

    .prologue
    .line 743
    const-string/jumbo v3, "ro.mtk_bsp_package"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 744
    const/4 v3, 0x0

    return v3

    .line 747
    :cond_12
    invoke-static {p0}, Lcom/mediatek/ims/compat/ImsCompat;->getSubIdUsingPhoneId(I)I

    move-result v2

    .line 748
    .local v2, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 749
    .local v0, "mccMnc":Ljava/lang/String;
    const-string/jumbo v3, "MMTelSSUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isOp06NetherlandsIccCard(): mccMnc is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    sget-object v3, Lcom/mediatek/ims/MMTelSSUtils;->OP06_NETHERLANDS_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 751
    .local v1, "retVal":Z
    const-string/jumbo v3, "MMTelSSUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isOp06NetherlandsIccCard()=>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    return v1
.end method

.method public static isOp07IccCard(I)Z
    .registers 6
    .param p0, "phoneId"    # I

    .prologue
    .line 756
    const-string/jumbo v2, "ro.mtk_bsp_package"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 757
    const/4 v2, 0x0

    return v2

    .line 760
    :cond_12
    invoke-static {p0}, Lcom/mediatek/ims/compat/ImsCompat;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 761
    .local v1, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 762
    .local v0, "mccMnc":Ljava/lang/String;
    const-string/jumbo v2, "MMTelSSUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isOp07IccCard(): mccMnc is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    sget-object v2, Lcom/mediatek/ims/MMTelSSUtils;->OP07_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static isOp08IccCard(I)Z
    .registers 6
    .param p0, "phoneId"    # I

    .prologue
    .line 767
    const-string/jumbo v2, "ro.mtk_bsp_package"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 768
    const/4 v2, 0x0

    return v2

    .line 771
    :cond_12
    invoke-static {p0}, Lcom/mediatek/ims/compat/ImsCompat;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 772
    .local v1, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 773
    .local v0, "mccMnc":Ljava/lang/String;
    const-string/jumbo v2, "MMTelSSUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isOp08IccCard(): mccMnc is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    sget-object v2, Lcom/mediatek/ims/MMTelSSUtils;->OP08_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static isOp112IccCard(I)Z
    .registers 6
    .param p0, "phoneId"    # I

    .prologue
    .line 822
    const-string/jumbo v2, "ro.mtk_bsp_package"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 823
    const/4 v2, 0x0

    return v2

    .line 826
    :cond_12
    invoke-static {p0}, Lcom/mediatek/ims/compat/ImsCompat;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 827
    .local v1, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 828
    .local v0, "mccMnc":Ljava/lang/String;
    const-string/jumbo v2, "MMTelSSUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isOp112IccCard(): mccMnc is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    sget-object v2, Lcom/mediatek/ims/MMTelSSUtils;->OP112_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static isOp11IccCard(I)Z
    .registers 6
    .param p0, "phoneId"    # I

    .prologue
    .line 778
    const-string/jumbo v2, "ro.mtk_bsp_package"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 779
    const/4 v2, 0x0

    return v2

    .line 782
    :cond_12
    invoke-static {p0}, Lcom/mediatek/ims/compat/ImsCompat;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 783
    .local v1, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 784
    .local v0, "mccMnc":Ljava/lang/String;
    const-string/jumbo v2, "MMTelSSUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isOp11IccCard(): mccMnc is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    sget-object v2, Lcom/mediatek/ims/MMTelSSUtils;->OP11_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static isOp120IccCard(I)Z
    .registers 6
    .param p0, "phoneId"    # I

    .prologue
    .line 833
    const-string/jumbo v2, "ro.mtk_bsp_package"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 834
    const/4 v2, 0x0

    return v2

    .line 837
    :cond_12
    invoke-static {p0}, Lcom/mediatek/ims/compat/ImsCompat;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 838
    .local v1, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 839
    .local v0, "mccMnc":Ljava/lang/String;
    const-string/jumbo v2, "MMTelSSUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isOp120IccCard(): mccMnc is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    sget-object v2, Lcom/mediatek/ims/MMTelSSUtils;->OP120_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static isOp124IccCard(I)Z
    .registers 6
    .param p0, "phoneId"    # I

    .prologue
    .line 844
    const-string/jumbo v2, "ro.mtk_bsp_package"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 845
    const/4 v2, 0x0

    return v2

    .line 848
    :cond_12
    invoke-static {p0}, Lcom/mediatek/ims/compat/ImsCompat;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 849
    .local v1, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 850
    .local v0, "mccMnc":Ljava/lang/String;
    const-string/jumbo v2, "MMTelSSUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isOp124IccCard(): mccMnc is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    sget-object v2, Lcom/mediatek/ims/MMTelSSUtils;->OP124_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static isOp130IccCard(I)Z
    .registers 6
    .param p0, "phoneId"    # I

    .prologue
    .line 855
    const-string/jumbo v2, "ro.mtk_bsp_package"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 856
    const/4 v2, 0x0

    return v2

    .line 859
    :cond_12
    invoke-static {p0}, Lcom/mediatek/ims/compat/ImsCompat;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 860
    .local v1, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 861
    .local v0, "mccMnc":Ljava/lang/String;
    const-string/jumbo v2, "MMTelSSUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isOp130IccCard(): mccMnc is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    sget-object v2, Lcom/mediatek/ims/MMTelSSUtils;->OP130_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static isOp15IccCard(I)Z
    .registers 6
    .param p0, "phoneId"    # I

    .prologue
    .line 789
    const-string/jumbo v2, "ro.mtk_bsp_package"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 790
    const/4 v2, 0x0

    return v2

    .line 793
    :cond_12
    invoke-static {p0}, Lcom/mediatek/ims/compat/ImsCompat;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 794
    .local v1, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 795
    .local v0, "mccMnc":Ljava/lang/String;
    const-string/jumbo v2, "MMTelSSUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isOp15IccCard(): mccMnc is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    sget-object v2, Lcom/mediatek/ims/MMTelSSUtils;->OP15_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static isOp18IccCard(I)Z
    .registers 6
    .param p0, "phoneId"    # I

    .prologue
    .line 800
    const-string/jumbo v2, "ro.mtk_bsp_package"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 801
    const/4 v2, 0x0

    return v2

    .line 804
    :cond_12
    invoke-static {p0}, Lcom/mediatek/ims/compat/ImsCompat;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 805
    .local v1, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 806
    .local v0, "mccMnc":Ljava/lang/String;
    const-string/jumbo v2, "MMTelSSUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isOp18IccCard(): mccMnc is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    sget-object v2, Lcom/mediatek/ims/MMTelSSUtils;->OP18_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static isOp19IccCard(I)Z
    .registers 6
    .param p0, "phoneId"    # I

    .prologue
    .line 811
    const-string/jumbo v2, "ro.mtk_bsp_package"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 812
    const/4 v2, 0x0

    return v2

    .line 815
    :cond_12
    invoke-static {p0}, Lcom/mediatek/ims/compat/ImsCompat;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 816
    .local v1, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, "mccMnc":Ljava/lang/String;
    const-string/jumbo v2, "MMTelSSUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isOp19IccCard(): mccMnc is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    sget-object v2, Lcom/mediatek/ims/MMTelSSUtils;->OP19_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static isPortugalVdfIccCard(I)Z
    .registers 6
    .param p0, "phoneId"    # I

    .prologue
    .line 866
    const-string/jumbo v2, "ro.mtk_bsp_package"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 867
    const/4 v2, 0x0

    return v2

    .line 870
    :cond_12
    invoke-static {p0}, Lcom/mediatek/ims/compat/ImsCompat;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 871
    .local v1, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 872
    .local v0, "mccMnc":Ljava/lang/String;
    const-string/jumbo v2, "MMTelSSUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isPortugalVdfIccCard(): mccMnc is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    sget-object v2, Lcom/mediatek/ims/MMTelSSUtils;->SPFICFIC_OP_PORTUGAL_VDF:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static isPreferXcap(I)Z
    .registers 5
    .param p0, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    .line 454
    const-string/jumbo v1, "ro.mtk_bsp_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 455
    return v3

    .line 458
    :cond_12
    const-string/jumbo v0, "Prefer CS"

    .line 459
    .local v0, "ssMode":Ljava/lang/String;
    const-string/jumbo v1, "ro.mtk_ims_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 460
    const-string/jumbo v1, "ro.mtk_volte_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 459
    if-eqz v1, :cond_7b

    .line 461
    const-string/jumbo v1, "persist.radio.ss.mode"

    const-string/jumbo v2, "Prefer XCAP"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    invoke-static {p0}, Lcom/mediatek/ims/MMTelSSUtils;->isNotSupportXcap(I)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 463
    const-string/jumbo v0, "Prefer CS"

    .line 469
    :cond_48
    :goto_48
    const-string/jumbo v1, "ro.mtk_ims_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 470
    const-string/jumbo v1, "ro.mtk_volte_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 476
    const-string/jumbo v1, "Prefer CS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 477
    const-string/jumbo v1, "MMTelSSUtils"

    const-string/jumbo v2, "isPreferXcap(): Config SS via CS! Return directly!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return v3

    .line 466
    :cond_7b
    const-string/jumbo v1, "persist.radio.ss.mode"

    const-string/jumbo v2, "Prefer CS"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_48

    .line 471
    :cond_86
    const-string/jumbo v1, "MMTelSSUtils"

    const-string/jumbo v2, "isPreferXcap(): Not Enable VOLTE feature! Return directly to use CSFB SS"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return v3

    .line 481
    :cond_90
    const/4 v1, 0x1

    return v1
.end method

.method public static isSupportXcap(ILandroid/net/Network;)Z
    .registers 27
    .param p0, "phoneId"    # I
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 491
    const-string/jumbo v21, "ro.mtk_bsp_package"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "1"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 492
    const/16 v21, 0x0

    return v21

    .line 495
    :cond_13
    invoke-static/range {p0 .. p0}, Lcom/mediatek/ims/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/mediatek/ims/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    .line 496
    const/16 v21, 0x0

    sput-object v21, Lcom/mediatek/ims/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    .line 497
    const/4 v9, 0x0

    .line 498
    .local v9, "ia":[Ljava/net/InetAddress;
    const/16 v21, 0x0

    sput-boolean v21, Lcom/mediatek/ims/MMTelSSUtils;->queryXcapSrvDone:Z

    .line 500
    const-string/jumbo v17, ""

    .line 501
    .local v17, "ss_mode":Ljava/lang/String;
    const-string/jumbo v21, "ro.mtk_ims_support"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "1"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b6

    .line 502
    const-string/jumbo v21, "ro.mtk_volte_support"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "1"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    .line 501
    if-eqz v21, :cond_b6

    .line 504
    const-string/jumbo v21, "persist.radio.ss.mode"

    const-string/jumbo v22, "Prefer XCAP"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 508
    :goto_4f
    const-string/jumbo v21, "MMTelSSUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "isSupportXcap(): sXcapUri="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/mediatek/ims/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ",ss_mode="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const-string/jumbo v12, ""

    .line 512
    .local v12, "preConfigPort":Ljava/lang/String;
    const-string/jumbo v21, "ro.mtk_ims_support"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "1"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c1

    .line 513
    const-string/jumbo v21, "ro.mtk_volte_support"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "1"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c1

    .line 519
    const-string/jumbo v21, "Prefer CS"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_cd

    .line 520
    const-string/jumbo v21, "MMTelSSUtils"

    const-string/jumbo v22, "Config SS via CS! Return directly!"

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/16 v21, 0x0

    return v21

    .line 506
    .end local v12    # "preConfigPort":Ljava/lang/String;
    :cond_b6
    const-string/jumbo v21, "persist.radio.ss.mode"

    const-string/jumbo v22, "Prefer CS"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto :goto_4f

    .line 515
    .restart local v12    # "preConfigPort":Ljava/lang/String;
    :cond_c1
    const-string/jumbo v21, "MMTelSSUtils"

    const-string/jumbo v22, "Not Enable VOLTE feature! Return directly to use CSFB SS"

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const/16 v21, 0x0

    return v21

    .line 524
    :cond_cd
    sget-object v21, Lcom/mediatek/ims/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    if-eqz v21, :cond_433

    .line 532
    const/4 v4, 0x0

    .line 535
    .local v4, "XcapSrvHostName":Ljava/lang/String;
    :try_start_d2
    sget-boolean v21, Lcom/mediatek/ims/MMTelSSUtils;->IS_ENG_BUILD:Z

    if-eqz v21, :cond_163

    .line 537
    const-string/jumbo v21, "mediatek.simserv.xcaproot"

    .line 538
    const-string/jumbo v22, "NON_CONFIG"

    .line 537
    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 539
    .local v3, "TestingXcapRoot":Ljava/lang/String;
    const-string/jumbo v21, "MMTelSSUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "mediatek.simserv.xcaproot="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-string/jumbo v21, "NON_CONFIG"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_125

    .line 541
    sput-object v3, Lcom/mediatek/ims/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    .line 542
    const-string/jumbo v21, "MMTelSSUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Replace sXcapUri="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/mediatek/ims/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_125
    const-string/jumbo v21, "http"

    sget-object v22, Lcom/mediatek/ims/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    sget-object v23, Lcom/mediatek/ims/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const/16 v24, 0x3a

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_163

    .line 546
    const-string/jumbo v21, "https"

    .line 547
    sget-object v22, Lcom/mediatek/ims/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    sget-object v23, Lcom/mediatek/ims/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const/16 v24, 0x3a

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 546
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2ad

    .line 567
    .end local v3    # "TestingXcapRoot":Ljava/lang/String;
    :cond_163
    :goto_163
    sget-object v21, Lcom/mediatek/ims/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const-string/jumbo v22, "http://"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_366

    .line 568
    sget-object v21, Lcom/mediatek/ims/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    sget-object v22, Lcom/mediatek/ims/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const-string/jumbo v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v22

    const/16 v23, 0x7

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 572
    .end local v4    # "XcapSrvHostName":Ljava/lang/String;
    :cond_185
    :goto_185
    const-string/jumbo v21, "MMTelSSUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "isSupportXcap():XcapSrvHostName="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    if-eqz p1, :cond_38a

    .line 574
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v9

    .line 580
    .local v9, "ia":[Ljava/net/InetAddress;
    :goto_1a9
    const/16 v21, 0x0

    array-length v0, v9

    move/from16 v22, v0

    :goto_1ae
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1dc

    aget-object v5, v9, v21

    .line 581
    .local v5, "addr":Ljava/net/InetAddress;
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v23

    sput-object v23, Lcom/mediatek/ims/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    .line 582
    sget-object v23, Lcom/mediatek/ims/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    if-eqz v23, :cond_390

    .line 583
    const-string/jumbo v21, "MMTelSSUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "xcap server ip : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/mediatek/ims/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1dc
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_1dc} :catch_347

    .line 599
    .end local v5    # "addr":Ljava/net/InetAddress;
    .end local v9    # "ia":[Ljava/net/InetAddress;
    :cond_1dc
    :goto_1dc
    const/16 v21, 0x1

    sput-boolean v21, Lcom/mediatek/ims/MMTelSSUtils;->queryXcapSrvDone:Z

    .line 603
    :cond_1e0
    sget-boolean v21, Lcom/mediatek/ims/MMTelSSUtils;->queryXcapSrvDone:Z

    if-eqz v21, :cond_1e0

    .line 607
    const-string/jumbo v21, "MMTelSSUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "QueryXcapSrvDone:xcap server ip : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/mediatek/ims/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    sget-object v21, Lcom/mediatek/ims/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    if-eqz v21, :cond_433

    const-string/jumbo v21, "Prefer XCAP"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_433

    .line 613
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v16

    .line 614
    .local v16, "sf":Ljavax/net/SocketFactory;
    const/4 v14, 0x0

    .line 615
    .local v14, "s":Ljava/net/Socket;
    const/4 v13, 0x0

    .line 618
    .local v13, "reachable":Z
    const-string/jumbo v20, ""

    .line 619
    .local v20, "testingPort":Ljava/lang/String;
    sget-boolean v21, Lcom/mediatek/ims/MMTelSSUtils;->IS_ENG_BUILD:Z

    if-eqz v21, :cond_228

    .line 620
    const-string/jumbo v21, "mediatek.simserv.port"

    const-string/jumbo v22, ""

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 626
    :cond_228
    const/4 v10, 0x0

    .line 627
    .local v10, "portList":[Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/mediatek/ims/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v21

    if-nez v21, :cond_235

    invoke-static/range {p0 .. p0}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v21

    if-eqz v21, :cond_394

    .line 628
    :cond_235
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v10, v0, [Ljava/lang/String;

    .line 629
    .local v10, "portList":[Ljava/lang/String;
    const-string/jumbo v21, "80"

    const/16 v22, 0x0

    aput-object v21, v10, v22

    .line 630
    const/16 v21, 0x1

    aput-object v12, v10, v21

    .line 631
    const/16 v21, 0x2

    aput-object v20, v10, v21

    .line 645
    :goto_24a
    const/4 v8, 0x0

    .end local v13    # "reachable":Z
    .end local v14    # "s":Ljava/net/Socket;
    .local v8, "i":I
    :goto_24b
    array-length v0, v10

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_433

    .line 646
    const/16 v19, 0x0

    .line 647
    .local v19, "tempPort":I
    aget-object v21, v10, v8

    const-string/jumbo v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_265

    .line 648
    aget-object v21, v10, v8

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 651
    :cond_265
    const-string/jumbo v21, "MMTelSSUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "testingPort="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "try connecting to IP="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 652
    sget-object v23, Lcom/mediatek/ims/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    .line 651
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 652
    const-string/jumbo v23, " and port="

    .line 651
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    aget-object v21, v10, v8

    const-string/jumbo v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3d6

    .line 645
    :cond_2aa
    add-int/lit8 v8, v8, 0x1

    goto :goto_24b

    .line 554
    .end local v8    # "i":I
    .end local v10    # "portList":[Ljava/lang/String;
    .end local v16    # "sf":Ljavax/net/SocketFactory;
    .end local v19    # "tempPort":I
    .end local v20    # "testingPort":Ljava/lang/String;
    .restart local v3    # "TestingXcapRoot":Ljava/lang/String;
    .restart local v4    # "XcapSrvHostName":Ljava/lang/String;
    .local v9, "ia":[Ljava/net/InetAddress;
    :cond_2ad
    :try_start_2ad
    sget-object v21, Lcom/mediatek/ims/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    sget-object v22, Lcom/mediatek/ims/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const/16 v23, 0x3a

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 555
    .local v11, "portSubString":Ljava/lang/String;
    const-string/jumbo v21, "MMTelSSUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "portSubString="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-string/jumbo v21, "/"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    .line 556
    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 558
    sget-object v21, Lcom/mediatek/ims/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    sget-object v22, Lcom/mediatek/ims/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const/16 v23, 0x3a

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/mediatek/ims/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    .line 560
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Lcom/mediatek/ims/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/mediatek/ims/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    .line 562
    const-string/jumbo v21, "MMTelSSUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "preConfig sXcapUri="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/mediatek/ims/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 563
    const-string/jumbo v23, " with preConfigPort="

    .line 562
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_345
    .catch Ljava/lang/Exception; {:try_start_2ad .. :try_end_345} :catch_347

    goto/16 :goto_163

    .line 588
    .end local v3    # "TestingXcapRoot":Ljava/lang/String;
    .end local v4    # "XcapSrvHostName":Ljava/lang/String;
    .end local v9    # "ia":[Ljava/net/InetAddress;
    .end local v11    # "portSubString":Ljava/lang/String;
    :catch_347
    move-exception v7

    .line 589
    .local v7, "ex":Ljava/lang/Exception;
    const-string/jumbo v21, "MMTelSSUtils"

    const-string/jumbo v22, "sXcapUri getHostAddress fail : "

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 592
    sget-boolean v21, Lcom/mediatek/ims/MMTelSSUtils;->IS_ENG_BUILD:Z

    if-eqz v21, :cond_1dc

    .line 596
    const-string/jumbo v21, "mediatek.simserv.xcapip"

    const-string/jumbo v22, ""

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/mediatek/ims/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    goto/16 :goto_1dc

    .line 569
    .end local v7    # "ex":Ljava/lang/Exception;
    .restart local v4    # "XcapSrvHostName":Ljava/lang/String;
    .restart local v9    # "ia":[Ljava/net/InetAddress;
    :cond_366
    :try_start_366
    sget-object v21, Lcom/mediatek/ims/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const-string/jumbo v22, "https://"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_185

    .line 570
    sget-object v21, Lcom/mediatek/ims/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    sget-object v22, Lcom/mediatek/ims/MMTelSSUtils;->sXcapUri:Ljava/lang/String;

    const-string/jumbo v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v22

    const/16 v23, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, "XcapSrvHostName":Ljava/lang/String;
    goto/16 :goto_185

    .line 576
    .end local v4    # "XcapSrvHostName":Ljava/lang/String;
    :cond_38a
    invoke-static {v4}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_38d
    .catch Ljava/lang/Exception; {:try_start_366 .. :try_end_38d} :catch_347

    move-result-object v9

    .local v9, "ia":[Ljava/net/InetAddress;
    goto/16 :goto_1a9

    .line 580
    .restart local v5    # "addr":Ljava/net/InetAddress;
    :cond_390
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1ae

    .line 632
    .end local v5    # "addr":Ljava/net/InetAddress;
    .end local v9    # "ia":[Ljava/net/InetAddress;
    .local v10, "portList":[Ljava/lang/String;
    .restart local v13    # "reachable":Z
    .restart local v14    # "s":Ljava/net/Socket;
    .restart local v16    # "sf":Ljavax/net/SocketFactory;
    .restart local v20    # "testingPort":Ljava/lang/String;
    :cond_394
    invoke-static/range {p0 .. p0}, Lcom/mediatek/ims/MMTelSSUtils;->isOp18IccCard(I)Z

    move-result v21

    if-eqz v21, :cond_3b8

    .line 633
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v10, v0, [Ljava/lang/String;

    .line 634
    .local v10, "portList":[Ljava/lang/String;
    const-string/jumbo v21, "7077"

    const/16 v22, 0x0

    aput-object v21, v10, v22

    .line 635
    const-string/jumbo v21, "443"

    const/16 v22, 0x1

    aput-object v21, v10, v22

    .line 636
    const/16 v21, 0x2

    aput-object v12, v10, v21

    .line 637
    const/16 v21, 0x3

    aput-object v20, v10, v21

    goto/16 :goto_24a

    .line 639
    .local v10, "portList":[Ljava/lang/String;
    :cond_3b8
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v10, v0, [Ljava/lang/String;

    .line 640
    .local v10, "portList":[Ljava/lang/String;
    const-string/jumbo v21, "443"

    const/16 v22, 0x0

    aput-object v21, v10, v22

    .line 641
    const-string/jumbo v21, "80"

    const/16 v22, 0x1

    aput-object v21, v10, v22

    .line 642
    const/16 v21, 0x2

    aput-object v12, v10, v21

    .line 643
    const/16 v21, 0x3

    aput-object v20, v10, v21

    goto/16 :goto_24a

    .line 658
    .end local v13    # "reachable":Z
    .end local v14    # "s":Ljava/net/Socket;
    .restart local v8    # "i":I
    .restart local v19    # "tempPort":I
    :cond_3d6
    :try_start_3d6
    new-instance v15, Ljava/net/InetSocketAddress;

    sget-object v21, Lcom/mediatek/ims/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-direct {v15, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 659
    .local v15, "sa":Ljava/net/InetSocketAddress;
    invoke-virtual/range {v16 .. v16}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v14

    .line 660
    .local v14, "s":Ljava/net/Socket;
    const/16 v21, 0x2710

    move/from16 v0, v21

    invoke-virtual {v14, v15, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 661
    invoke-virtual {v14}, Ljava/net/Socket;->isConnected()Z

    move-result v13

    .line 662
    .local v13, "reachable":Z
    const-string/jumbo v21, "MMTelSSUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Connect to XCAP_IP="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/mediatek/ims/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " with port="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 663
    aget-object v23, v10, v8

    .line 662
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 663
    const-string/jumbo v23, ", reachable="

    .line 662
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-virtual {v14}, Ljava/net/Socket;->close()V
    :try_end_429
    .catch Ljava/lang/Exception; {:try_start_3d6 .. :try_end_429} :catch_42e

    .line 668
    .end local v13    # "reachable":Z
    .end local v14    # "s":Ljava/net/Socket;
    .end local v15    # "sa":Ljava/net/InetSocketAddress;
    :goto_429
    if-eqz v13, :cond_2aa

    .line 669
    const/16 v21, 0x1

    return v21

    .line 665
    :catch_42e
    move-exception v6

    .line 666
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_429

    .line 676
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "i":I
    .end local v10    # "portList":[Ljava/lang/String;
    .end local v16    # "sf":Ljavax/net/SocketFactory;
    .end local v19    # "tempPort":I
    .end local v20    # "testingPort":Ljava/lang/String;
    :cond_433
    sget-boolean v21, Lcom/mediatek/ims/MMTelSSUtils;->IS_ENG_BUILD:Z

    if-eqz v21, :cond_47a

    .line 677
    const-string/jumbo v21, "MMTelSSUtils"

    const-string/jumbo v22, "isSupportXcap(): start to get ss tcname"

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const-string/jumbo v21, "ril.ss.tcname"

    const-string/jumbo v22, "Empty"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 681
    .local v18, "tc_name":Ljava/lang/String;
    const-string/jumbo v21, "MMTelSSUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "isSupportXcap():tc_name="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    if-eqz v18, :cond_47a

    const-string/jumbo v21, "Single_TC_"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_47a

    .line 683
    const/16 v21, 0x1

    return v21

    .line 687
    .end local v18    # "tc_name":Ljava/lang/String;
    :cond_47a
    const/16 v21, 0x0

    return v21
.end method

.method public static queryCFUAgainAfterSet(I)Z
    .registers 3
    .param p0, "phoneId"    # I

    .prologue
    .line 982
    invoke-static {p0}, Lcom/mediatek/ims/MMTelSSUtils;->isOp05IccCard(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 983
    invoke-static {p0}, Lcom/mediatek/ims/MMTelSSUtils;->isOp11IccCard(I)Z

    move-result v0

    .line 982
    if-eqz v0, :cond_e

    .line 984
    :cond_c
    const/4 v0, 0x1

    return v0

    .line 986
    :cond_e
    const-string/jumbo v0, "MMTelSSUtils"

    const-string/jumbo v1, "No need to query CFU again."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    const/4 v0, 0x0

    return v0
.end method
