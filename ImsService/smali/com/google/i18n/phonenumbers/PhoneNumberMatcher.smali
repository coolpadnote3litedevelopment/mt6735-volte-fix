.class final Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;
.super Ljava/lang/Object;
.source "PhoneNumberMatcher.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;,
        Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/i18n/phonenumbers/PhoneNumberMatch;",
        ">;"
    }
.end annotation


# static fields
.field private static final INNER_MATCHES:[Ljava/util/regex/Pattern;

.field private static final LEAD_CLASS:Ljava/util/regex/Pattern;

.field private static final MATCHING_BRACKETS:Ljava/util/regex/Pattern;

.field private static final PATTERN:Ljava/util/regex/Pattern;

.field private static final PUB_PAGES:Ljava/util/regex/Pattern;

.field private static final SLASH_SEPARATED_DATES:Ljava/util/regex/Pattern;

.field private static final TIME_STAMPS:Ljava/util/regex/Pattern;

.field private static final TIME_STAMPS_SUFFIX:Ljava/util/regex/Pattern;


# instance fields
.field private lastMatch:Lcom/google/i18n/phonenumbers/PhoneNumberMatch;

.field private final leniency:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field private maxTries:J

.field private final phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

.field private final preferredRegion:Ljava/lang/String;

.field private searchIndex:I

.field private state:Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .prologue
    .line 67
    const-string/jumbo v12, "\\d{1,5}-+\\d{1,5}\\s{0,4}\\(\\d{1,4}"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->PUB_PAGES:Ljava/util/regex/Pattern;

    .line 74
    const-string/jumbo v12, "(?:(?:[0-3]?\\d/[01]?\\d)|(?:[01]?\\d/[0-3]?\\d))/(?:[12]\\d)?\\d{2}"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 73
    sput-object v12, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->SLASH_SEPARATED_DATES:Ljava/util/regex/Pattern;

    .line 81
    const-string/jumbo v12, "[12]\\d{3}[-/]?[01]\\d[-/]?[0-3]\\d +[0-2]\\d$"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 80
    sput-object v12, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS:Ljava/util/regex/Pattern;

    .line 82
    const-string/jumbo v12, ":[0-5]\\d"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS_SUFFIX:Ljava/util/regex/Pattern;

    .line 101
    const/4 v12, 0x6

    new-array v12, v12, [Ljava/util/regex/Pattern;

    .line 103
    const-string/jumbo v13, "/+(.*)"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    .line 106
    const-string/jumbo v13, "(\\([^(]*)"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    .line 109
    const-string/jumbo v13, "(?:\\p{Z}-|-\\p{Z})\\p{Z}*(.+)"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v12, v14

    .line 113
    const-string/jumbo v13, "[\u2012-\u2015\uff0d]\\p{Z}*(.+)"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    const/4 v14, 0x3

    aput-object v13, v12, v14

    .line 115
    const-string/jumbo v13, "\\.+\\p{Z}*([^.]+)"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    const/4 v14, 0x4

    aput-object v13, v12, v14

    .line 117
    const-string/jumbo v13, "\\p{Z}+(\\P{Z}+)"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    const/4 v14, 0x5

    aput-object v13, v12, v14

    .line 101
    sput-object v12, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->INNER_MATCHES:[Ljava/util/regex/Pattern;

    .line 129
    const-string/jumbo v9, "(\\[\uff08\uff3b"

    .line 130
    .local v9, "openingParens":Ljava/lang/String;
    const-string/jumbo v2, ")\\]\uff09\uff3d"

    .line 131
    .local v2, "closingParens":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[^"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 134
    .local v8, "nonParens":Ljava/lang/String;
    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-static {v12, v13}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "bracketPairLimit":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "(?:["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "])?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "(?:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "+"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "])?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 142
    const-string/jumbo v13, "+"

    .line 141
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 143
    const-string/jumbo v13, "(?:["

    .line 141
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 143
    const-string/jumbo v13, "]"

    .line 141
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 143
    const-string/jumbo v13, "+["

    .line 141
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 143
    const-string/jumbo v13, "])"

    .line 141
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 144
    const-string/jumbo v13, "*"

    .line 141
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 140
    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->MATCHING_BRACKETS:Ljava/util/regex/Pattern;

    .line 147
    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-static {v12, v13}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v7

    .line 149
    .local v7, "leadLimit":Ljava/lang/String;
    const/4 v12, 0x0

    const/4 v13, 0x4

    invoke-static {v12, v13}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v11

    .line 154
    .local v11, "punctuationLimit":Ljava/lang/String;
    const/16 v3, 0x14

    .line 157
    .local v3, "digitBlockLimit":I
    const/4 v12, 0x0

    invoke-static {v12, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "blockLimit":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 162
    .local v10, "punctuation":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "\\p{Nd}"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "digitSequence":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "+\uff0b"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 165
    .local v6, "leadClassChars":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 166
    .local v5, "leadClass":Ljava/lang/String;
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->LEAD_CLASS:Ljava/util/regex/Pattern;

    .line 170
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "(?:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 171
    const-string/jumbo v13, "(?:"

    .line 170
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 171
    const-string/jumbo v13, ")"

    .line 170
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 172
    const-string/jumbo v13, "(?:"

    .line 170
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 172
    sget-object v13, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

    .line 170
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 172
    const-string/jumbo v13, ")?"

    .line 170
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 173
    const/16 v13, 0x42

    .line 169
    invoke-static {v12, v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->PATTERN:Ljava/util/regex/Pattern;

    .line 43
    return-void
.end method

.method constructor <init>(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)V
    .registers 10
    .param p1, "util"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "country"    # Ljava/lang/String;
    .param p4, "leniency"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;
    .param p5, "maxTries"    # J

    .prologue
    const/4 v1, 0x0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;

    .line 206
    iput-object v1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/google/i18n/phonenumbers/PhoneNumberMatch;

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->searchIndex:I

    .line 228
    if-eqz p1, :cond_11

    if-nez p4, :cond_17

    .line 229
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 231
    :cond_17
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-gez v0, :cond_23

    .line 232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 234
    :cond_23
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .line 235
    if-eqz p2, :cond_30

    .end local p2    # "text":Ljava/lang/CharSequence;
    :goto_27
    iput-object p2, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    .line 236
    iput-object p3, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->preferredRegion:Ljava/lang/String;

    .line 237
    iput-object p4, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->leniency:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    .line 238
    iput-wide p5, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    .line 226
    return-void

    .line 235
    .restart local p2    # "text":Ljava/lang/CharSequence;
    :cond_30
    const-string/jumbo p2, ""

    goto :goto_27
.end method

.method static allNumberGroupsAreExactlyPresent(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .registers 11
    .param p0, "util"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "normalizedCandidate"    # Ljava/lang/StringBuilder;
    .param p3, "formattedNumberGroups"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 520
    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "candidateGroups":[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v4

    if-eqz v4, :cond_25

    array-length v4, v0

    add-int/lit8 v1, v4, -0x2

    .line 527
    .local v1, "candidateNumberGroupIndex":I
    :goto_15
    array-length v4, v0

    if-eq v4, v6, :cond_24

    .line 528
    aget-object v4, v0, v1

    .line 529
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v5

    .line 528
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 527
    if-eqz v4, :cond_29

    .line 530
    :cond_24
    return v6

    .line 523
    .end local v1    # "candidateNumberGroupIndex":I
    :cond_25
    array-length v4, v0

    add-int/lit8 v1, v4, -0x1

    .restart local v1    # "candidateNumberGroupIndex":I
    goto :goto_15

    .line 534
    :cond_29
    array-length v4, p3

    add-int/lit8 v2, v4, -0x1

    .line 535
    .local v2, "formattedNumberGroupIndex":I
    :goto_2c
    if-lez v2, :cond_40

    if-ltz v1, :cond_40

    .line 537
    aget-object v4, v0, v1

    .line 538
    aget-object v5, p3, v2

    .line 537
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 539
    return v3

    .line 536
    :cond_3b
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2c

    .line 544
    :cond_40
    if-ltz v1, :cond_4a

    .line 545
    aget-object v4, v0, v1

    aget-object v3, p3, v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    .line 544
    :cond_4a
    return v3
.end method

.method static allNumberGroupsRemainGrouped(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .registers 12
    .param p0, "util"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "normalizedCandidate"    # Ljava/lang/StringBuilder;
    .param p3, "formattedNumberGroups"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 475
    const/4 v1, 0x0

    .line 476
    .local v1, "fromIndex":I
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v5

    sget-object v6, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-eq v5, v6, :cond_1c

    .line 478
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "countryCode":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int v1, v5, v6

    .line 483
    .end local v0    # "countryCode":Ljava/lang/String;
    :cond_1c
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    array-length v5, p3

    if-ge v2, v5, :cond_69

    .line 486
    aget-object v5, p3, v2

    invoke-virtual {p2, v5, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 487
    if-gez v1, :cond_29

    .line 488
    return v7

    .line 491
    :cond_29
    aget-object v5, p3, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    .line 492
    if-nez v2, :cond_66

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v1, v5, :cond_66

    .line 497
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v4

    .line 498
    .local v4, "region":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_66

    .line 499
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    .line 498
    if-eqz v5, :cond_66

    .line 503
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 504
    .local v3, "nationalSignificantNumber":Ljava/lang/String;
    aget-object v5, p3, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    return v5

    .line 483
    .end local v3    # "nationalSignificantNumber":Ljava/lang/String;
    .end local v4    # "region":Ljava/lang/String;
    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 512
    :cond_69
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    return v5
.end method

.method static checkNumberGroupingIsValid(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;)Z
    .registers 11
    .param p0, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "util"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    .param p3, "checker"    # Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 579
    invoke-static {p1, v6}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigits(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 580
    .local v4, "normalizedCandidate":Ljava/lang/StringBuilder;
    invoke-static {p2, p0, v5}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->getNationalNumberGroups(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;)[Ljava/lang/String;

    move-result-object v3

    .line 581
    .local v3, "formattedNumberGroups":[Ljava/lang/String;
    invoke-interface {p3, p2, p0, v4, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;->checkGroups(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 582
    return v6

    .line 586
    :cond_11
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v5

    invoke-static {v5}, Lcom/google/i18n/phonenumbers/MetadataManager;->getAlternateFormatsForCountry(I)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 587
    .local v2, "alternateFormats":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v2, :cond_3a

    .line 588
    invoke-virtual {v2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "alternateFormat$iterator":Ljava/util/Iterator;
    :cond_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 589
    .local v0, "alternateFormat":Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-static {p2, p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->getNationalNumberGroups(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;)[Ljava/lang/String;

    move-result-object v3

    .line 590
    invoke-interface {p3, p2, p0, v4, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;->checkGroups(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 591
    return v6

    .line 595
    .end local v0    # "alternateFormat":Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v1    # "alternateFormat$iterator":Ljava/util/Iterator;
    :cond_3a
    const/4 v5, 0x0

    return v5
.end method

.method static containsMoreThanOneSlashInNationalNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .registers 8
    .param p0, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p1, "candidate"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x2f

    const/4 v5, 0x0

    .line 599
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 600
    .local v1, "firstSlashInBodyIndex":I
    if-gez v1, :cond_a

    .line 602
    return v5

    .line 605
    :cond_a
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 606
    .local v2, "secondSlashInBodyIndex":I
    if-gez v2, :cond_13

    .line 608
    return v5

    .line 613
    :cond_13
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v3

    sget-object v4, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-eq v3, v4, :cond_4a

    .line 614
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v3

    sget-object v4, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-ne v3, v4, :cond_4c

    const/4 v0, 0x1

    .line 615
    .local v0, "candidateHasCountryCode":Z
    :goto_24
    if-eqz v0, :cond_4e

    .line 616
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 617
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 616
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 615
    if-eqz v3, :cond_4e

    .line 619
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    return v3

    .line 613
    .end local v0    # "candidateHasCountryCode":Z
    :cond_4a
    const/4 v0, 0x1

    .restart local v0    # "candidateHasCountryCode":Z
    goto :goto_24

    .line 614
    .end local v0    # "candidateHasCountryCode":Z
    :cond_4c
    const/4 v0, 0x0

    .restart local v0    # "candidateHasCountryCode":Z
    goto :goto_24

    .line 621
    :cond_4e
    const/4 v3, 0x1

    return v3
.end method

.method static containsOnlyValidXChars(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)Z
    .registers 11
    .param p0, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "util"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .prologue
    const/16 v7, 0x78

    const/16 v6, 0x58

    const/4 v5, 0x0

    .line 631
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_45

    .line 632
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 633
    .local v0, "charAtIndex":C
    if-eq v0, v7, :cond_16

    if-ne v0, v6, :cond_42

    .line 634
    :cond_16
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 635
    .local v1, "charAtNextIndex":C
    if-eq v1, v7, :cond_20

    if-ne v1, v6, :cond_2f

    .line 638
    :cond_20
    add-int/lit8 v2, v2, 0x1

    .line 639
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p0, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v3

    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    if-eq v3, v4, :cond_42

    .line 640
    return v5

    .line 644
    :cond_2f
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 645
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v4

    .line 644
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 646
    return v5

    .line 631
    .end local v1    # "charAtNextIndex":C
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 650
    .end local v0    # "charAtIndex":C
    :cond_45
    const/4 v3, 0x1

    return v3
.end method

.method private extractInnerMatch(Ljava/lang/String;I)Lcom/google/i18n/phonenumbers/PhoneNumberMatch;
    .registers 15
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .prologue
    .line 349
    sget-object v6, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->INNER_MATCHES:[Ljava/util/regex/Pattern;

    const/4 v5, 0x0

    array-length v7, v6

    :goto_4
    if-ge v5, v7, :cond_66

    aget-object v4, v6, v5

    .line 350
    .local v4, "possibleInnerMatch":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 351
    .local v1, "groupMatcher":Ljava/util/regex/Matcher;
    const/4 v2, 0x1

    .line 352
    .local v2, "isFirstMatch":Z
    :goto_d
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_63

    iget-wide v8, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_63

    .line 353
    if-eqz v2, :cond_3f

    .line 356
    sget-object v8, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 357
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p1, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 355
    invoke-static {v8, v9}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 358
    .local v0, "group":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/String;I)Lcom/google/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v3

    .line 359
    .local v3, "match":Lcom/google/i18n/phonenumbers/PhoneNumberMatch;
    if-eqz v3, :cond_37

    .line 360
    return-object v3

    .line 362
    :cond_37
    iget-wide v8, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    .line 363
    const/4 v2, 0x0

    .line 366
    .end local v0    # "group":Ljava/lang/CharSequence;
    .end local v3    # "match":Lcom/google/i18n/phonenumbers/PhoneNumberMatch;
    :cond_3f
    sget-object v8, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 365
    invoke-static {v8, v9}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 367
    .restart local v0    # "group":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->start(I)I

    move-result v9

    add-int/2addr v9, p2

    invoke-direct {p0, v8, v9}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/String;I)Lcom/google/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v3

    .line 368
    .restart local v3    # "match":Lcom/google/i18n/phonenumbers/PhoneNumberMatch;
    if-eqz v3, :cond_5b

    .line 369
    return-object v3

    .line 371
    :cond_5b
    iget-wide v8, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    goto :goto_d

    .line 349
    .end local v0    # "group":Ljava/lang/CharSequence;
    .end local v3    # "match":Lcom/google/i18n/phonenumbers/PhoneNumberMatch;
    :cond_63
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 374
    .end local v1    # "groupMatcher":Ljava/util/regex/Matcher;
    .end local v2    # "isFirstMatch":Z
    .end local v4    # "possibleInnerMatch":Ljava/util/regex/Pattern;
    :cond_66
    const/4 v5, 0x0

    return-object v5
.end method

.method private extractMatch(Ljava/lang/CharSequence;I)Lcom/google/i18n/phonenumbers/PhoneNumberMatch;
    .registers 9
    .param p1, "candidate"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I

    .prologue
    const/4 v5, 0x0

    .line 316
    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->SLASH_SEPARATED_DATES:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 317
    return-object v5

    .line 321
    :cond_e
    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 322
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "followingText":Ljava/lang/String;
    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS_SUFFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 324
    return-object v5

    .line 329
    .end local v0    # "followingText":Ljava/lang/String;
    :cond_36
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, "rawString":Ljava/lang/String;
    invoke-direct {p0, v2, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/String;I)Lcom/google/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v1

    .line 331
    .local v1, "match":Lcom/google/i18n/phonenumbers/PhoneNumberMatch;
    if-eqz v1, :cond_41

    .line 332
    return-object v1

    .line 337
    :cond_41
    invoke-direct {p0, v2, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->extractInnerMatch(Ljava/lang/String;I)Lcom/google/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v3

    return-object v3
.end method

.method private find(I)Lcom/google/i18n/phonenumbers/PhoneNumberMatch;
    .registers 11
    .param p1, "index"    # I

    .prologue
    const/4 v8, 0x0

    .line 249
    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->PATTERN:Ljava/util/regex/Pattern;

    iget-object v5, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 250
    .local v2, "matcher":Ljava/util/regex/Matcher;
    :goto_9
    iget-wide v4, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_40

    invoke-virtual {v2, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 251
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 252
    .local v3, "start":I
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-interface {v4, v3, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 257
    .local v0, "candidate":Ljava/lang/CharSequence;
    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v4, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 259
    invoke-direct {p0, v0, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->extractMatch(Ljava/lang/CharSequence;I)Lcom/google/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v1

    .line 260
    .local v1, "match":Lcom/google/i18n/phonenumbers/PhoneNumberMatch;
    if-eqz v1, :cond_32

    .line 261
    return-object v1

    .line 264
    :cond_32
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int p1, v3, v4

    .line 265
    iget-wide v4, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    goto :goto_9

    .line 268
    .end local v0    # "candidate":Ljava/lang/CharSequence;
    .end local v1    # "match":Lcom/google/i18n/phonenumbers/PhoneNumberMatch;
    .end local v3    # "start":I
    :cond_40
    return-object v8
.end method

.method private static getNationalNumberGroups(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;)[Ljava/lang/String;
    .registers 9
    .param p0, "util"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "formattingPattern"    # Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .prologue
    .line 554
    if-nez p2, :cond_28

    .line 556
    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v4}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v2

    .line 559
    .local v2, "rfc3966Format":Ljava/lang/String;
    const/16 v4, 0x3b

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 560
    .local v0, "endIndex":I
    if-gez v0, :cond_14

    .line 561
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 564
    :cond_14
    const/16 v4, 0x2d

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 565
    .local v3, "startIndex":I
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 568
    .end local v0    # "endIndex":I
    .end local v2    # "rfc3966Format":Ljava/lang/String;
    .end local v3    # "startIndex":I
    :cond_28
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 570
    .local v1, "nationalSignificantNumber":Ljava/lang/String;
    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 569
    invoke-virtual {p0, v1, p2, v4}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v4

    .line 570
    const-string/jumbo v5, "-"

    .line 569
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static isInvalidPunctuationSymbol(C)Z
    .registers 4
    .param p0, "character"    # C

    .prologue
    const/4 v0, 0x1

    .line 304
    const/16 v1, 0x25

    if-eq p0, v1, :cond_d

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v1

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static isLatinLetter(C)Z
    .registers 4
    .param p0, "letter"    # C

    .prologue
    .line 291
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_f

    .line 292
    const/4 v1, 0x0

    return v1

    .line 294
    :cond_f
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 295
    .local v0, "block":Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 296
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 295
    if-nez v1, :cond_42

    .line 297
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 295
    if-nez v1, :cond_42

    .line 298
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_ADDITIONAL:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 295
    if-nez v1, :cond_42

    .line 299
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 295
    if-nez v1, :cond_42

    .line 300
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->COMBINING_DIACRITICAL_MARKS:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 295
    :goto_41
    return v1

    :cond_42
    const/4 v1, 0x1

    goto :goto_41
.end method

.method static isNationalPrefixPresentIfRequired(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)Z
    .registers 12
    .param p0, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p1, "util"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 656
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v6

    sget-object v7, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-eq v6, v7, :cond_b

    .line 657
    return v8

    .line 660
    :cond_b
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v3

    .line 661
    .local v3, "phoneNumberRegion":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 662
    .local v1, "metadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v1, :cond_1a

    .line 663
    return v8

    .line 666
    :cond_1a
    invoke-virtual {p1, p0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 668
    .local v2, "nationalNumber":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p1, v6, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v0

    .line 671
    .local v0, "formatRule":Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-eqz v0, :cond_56

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_56

    .line 672
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->isNationalPrefixOptionalWhenFormatting()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 675
    return v8

    .line 678
    :cond_39
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v6

    .line 677
    invoke-static {v6}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 680
    return v8

    .line 683
    :cond_44
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 684
    .local v5, "rawInputCopy":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 687
    .local v4, "rawInput":Ljava/lang/StringBuilder;
    invoke-virtual {p1, v4, v1, v9}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    move-result v6

    return v6

    .line 689
    .end local v4    # "rawInput":Ljava/lang/StringBuilder;
    .end local v5    # "rawInputCopy":Ljava/lang/String;
    :cond_56
    return v8
.end method

.method private static limit(II)Ljava/lang/String;
    .registers 4
    .param p0, "lower"    # I
    .param p1, "upper"    # I

    .prologue
    .line 178
    if-ltz p0, :cond_4

    if-gtz p1, :cond_a

    .line 179
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 178
    :cond_a
    if-lt p1, p0, :cond_4

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseAndVerify(Ljava/lang/String;I)Lcom/google/i18n/phonenumbers/PhoneNumberMatch;
    .registers 11
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .prologue
    const/4 v7, 0x0

    .line 390
    :try_start_1
    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->MATCHING_BRACKETS:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_19

    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->PUB_PAGES:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 391
    :cond_19
    return-object v7

    .line 396
    :cond_1a
    iget-object v5, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->leniency:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    sget-object v6, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;->VALID:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    invoke-virtual {v5, v6}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-ltz v5, :cond_68

    .line 399
    if-lez p2, :cond_32

    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->LEAD_CLASS:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 406
    :cond_32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int v1, p2, v5

    .line 407
    .local v1, "lastCharIndex":I
    iget-object v5, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v1, v5, :cond_68

    .line 408
    iget-object v5, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 409
    .local v2, "nextChar":C
    invoke-static {v2}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->isInvalidPunctuationSymbol(C)Z

    move-result v5

    if-nez v5, :cond_52

    invoke-static {v2}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->isLatinLetter(C)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 410
    :cond_52
    return-object v7

    .line 400
    .end local v1    # "lastCharIndex":I
    .end local v2    # "nextChar":C
    :cond_53
    iget-object v5, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    add-int/lit8 v6, p2, -0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 402
    .local v4, "previousChar":C
    invoke-static {v4}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->isInvalidPunctuationSymbol(C)Z

    move-result v5

    if-nez v5, :cond_67

    invoke-static {v4}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->isLatinLetter(C)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 403
    :cond_67
    return-object v7

    .line 415
    .end local v4    # "previousChar":C
    :cond_68
    iget-object v5, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    iget-object v6, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->preferredRegion:Ljava/lang/String;

    invoke-virtual {v5, p1, v6}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3

    .line 429
    .local v3, "number":Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    iget-object v5, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v3}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "IL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a1

    .line 430
    iget-object v5, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v5, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_a1

    .line 431
    if-eqz p2, :cond_a0

    if-lez p2, :cond_a1

    iget-object v5, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    add-int/lit8 v6, p2, -0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x2a

    if-eq v5, v6, :cond_a1

    .line 433
    :cond_a0
    return-object v7

    .line 436
    :cond_a1
    iget-object v5, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->leniency:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    iget-object v6, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v5, v3, p1, v6}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;->verify(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)Z

    move-result v5

    if-eqz v5, :cond_bb

    .line 440
    invoke-virtual {v3}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 441
    invoke-virtual {v3}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearRawInput()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 442
    invoke-virtual {v3}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearPreferredDomesticCarrierCode()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 443
    new-instance v5, Lcom/google/i18n/phonenumbers/PhoneNumberMatch;

    invoke-direct {v5, p2, p1, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberMatch;-><init>(ILjava/lang/String;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    :try_end_b9
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_1 .. :try_end_b9} :catch_ba

    return-object v5

    .line 445
    .end local v3    # "number":Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_ba
    move-exception v0

    .line 448
    :cond_bb
    return-object v7
.end method

.method private static trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .param p0, "pattern"    # Ljava/util/regex/Pattern;
    .param p1, "candidate"    # Ljava/lang/CharSequence;

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 277
    .local v0, "trailingCharsMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 278
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 280
    :cond_13
    return-object p1
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .prologue
    .line 694
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;

    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;

    if-ne v0, v1, :cond_16

    .line 695
    iget v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->searchIndex:I

    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->find(I)Lcom/google/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/google/i18n/phonenumbers/PhoneNumberMatch;

    .line 696
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/google/i18n/phonenumbers/PhoneNumberMatch;

    if-nez v0, :cond_1e

    .line 697
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;->DONE:Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;

    .line 703
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;

    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;->READY:Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;

    if-ne v0, v1, :cond_2b

    const/4 v0, 0x1

    :goto_1d
    return v0

    .line 699
    :cond_1e
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/google/i18n/phonenumbers/PhoneNumberMatch;

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v0

    iput v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->searchIndex:I

    .line 700
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;->READY:Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;

    goto :goto_16

    .line 703
    :cond_2b
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public next()Lcom/google/i18n/phonenumbers/PhoneNumberMatch;
    .registers 3

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->hasNext()Z

    move-result v1

    if-nez v1, :cond_c

    .line 710
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 714
    :cond_c
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/google/i18n/phonenumbers/PhoneNumberMatch;

    .line 715
    .local v0, "result":Lcom/google/i18n/phonenumbers/PhoneNumberMatch;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/google/i18n/phonenumbers/PhoneNumberMatch;

    .line 716
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;

    .line 717
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->next()Lcom/google/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 725
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
