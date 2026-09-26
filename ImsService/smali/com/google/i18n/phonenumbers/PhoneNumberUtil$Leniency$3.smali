.class final enum Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;
.super Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 485
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;-><init>(Ljava/lang/String;ILcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;)V

    return-void
.end method


# virtual methods
.method verify(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)Z
    .registers 5
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "candidate"    # Ljava/lang/String;
    .param p3, "util"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .prologue
    .line 488
    invoke-virtual {p3, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 489
    invoke-static {p1, p2, p3}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->containsOnlyValidXChars(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 490
    invoke-static {p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->containsMoreThanOneSlashInNationalNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v0

    .line 488
    if-nez v0, :cond_22

    .line 491
    invoke-static {p1, p3}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->isNationalPrefixPresentIfRequired(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 495
    new-instance v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency$3$1;

    invoke-direct {v0, p0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency$3$1;-><init>(Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;)V

    .line 494
    invoke-static {p1, p2, p3, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->checkNumberGroupingIsValid(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;)Z

    move-result v0

    return v0

    .line 492
    :cond_22
    const/4 v0, 0x0

    return v0
.end method
