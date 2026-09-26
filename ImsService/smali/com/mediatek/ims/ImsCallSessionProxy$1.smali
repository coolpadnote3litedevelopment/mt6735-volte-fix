.class Lcom/mediatek/ims/ImsCallSessionProxy$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsCallSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsCallSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHostAddr:Ljava/lang/String;

.field private mHostInfo:Landroid/os/Bundle;

.field private mParticipants:Ljava/util/LinkedHashMap;

.field private mUnknowParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mediatek/ims/ImsCallSessionProxy;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .prologue
    .line 678
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 680
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mUnknowParticipants:Ljava/util/List;

    .line 681
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mParticipants:Ljava/util/LinkedHashMap;

    .line 678
    return-void
.end method

.method private createHostInfo()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 753
    const-string/jumbo v1, "ImsCallSessionProxy"

    const-string/jumbo v2, "No host in CEP, generate a fake one"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 755
    .local v0, "userInfo":Landroid/os/Bundle;
    const-string/jumbo v1, "user"

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mHostAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const-string/jumbo v1, "display-text"

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mHostAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const-string/jumbo v1, "endpoint"

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mHostAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const-string/jumbo v1, "status"

    const-string/jumbo v2, "connected"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    return-object v0
.end method

.method private finalizeHost(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 763
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;>;"
    const-string/jumbo v4, "ImsCallSessionProxy"

    const-string/jumbo v5, "finalizeHost"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "user$iterator":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;

    .line 766
    .local v1, "user":Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;->getEntity()Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, "entity":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->-wrap1(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 769
    .local v3, "userAddr":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mHostAddr:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 770
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy$1;->packUserInfo(Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mHostInfo:Landroid/os/Bundle;

    .line 771
    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mHostAddr:Ljava/lang/String;

    .line 772
    const-string/jumbo v4, "ImsCallSessionProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is host"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    .end local v0    # "entity":Ljava/lang/String;
    .end local v1    # "user":Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;
    .end local v3    # "userAddr":Ljava/lang/String;
    :cond_4d
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mHostInfo:Landroid/os/Bundle;

    if-nez v4, :cond_57

    .line 777
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy$1;->createHostInfo()Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mHostInfo:Landroid/os/Bundle;

    .line 762
    :cond_57
    return-void
.end method

.method private fullUpdateParticipants(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 782
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;>;"
    const-string/jumbo v5, "ImsCallSessionProxy"

    const-string/jumbo v6, "reset all users as participants"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 784
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->clear()V

    .line 787
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mParticipants:Ljava/util/LinkedHashMap;

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mHostAddr:Ljava/lang/String;

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mHostInfo:Landroid/os/Bundle;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "user$iterator":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;

    .line 790
    .local v1, "user":Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;->getEntity()Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, "entity":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->-wrap1(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 792
    .local v3, "userAddr":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy$1;->packUserInfo(Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;)Landroid/os/Bundle;

    move-result-object v4

    .line 793
    .local v4, "userInfo":Landroid/os/Bundle;
    const-string/jumbo v5, "ImsCallSessionProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handle user: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " addr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    if-eqz v3, :cond_6b

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7a

    .line 796
    :cond_6b
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 797
    const-string/jumbo v5, "ImsCallSessionProxy"

    const-string/jumbo v6, "add unknow participants"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 799
    :cond_7a
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    const-string/jumbo v5, "ImsCallSessionProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "add participants: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 781
    .end local v0    # "entity":Ljava/lang/String;
    .end local v1    # "user":Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;
    .end local v3    # "userAddr":Ljava/lang/String;
    .end local v4    # "userInfo":Landroid/os/Bundle;
    :cond_9a
    return-void
.end method

.method private handleImsConfCallMessage(IILjava/lang/String;)V
    .registers 12
    .param p1, "len"    # I
    .param p2, "callId"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 887
    if-eqz p3, :cond_c

    const-string/jumbo v3, ""

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 888
    :cond_c
    const-string/jumbo v3, "ImsCallSessionProxy"

    const-string/jumbo v4, "Failed to handleImsConfCallMessage due to data is empty"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    return-void

    .line 892
    :cond_16
    const-string/jumbo v3, "ImsCallSessionProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleVoLteConfCallMessage, data length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 893
    const-string/jumbo v5, "callId = "

    .line 892
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string/jumbo v4, "CC"

    const-string/jumbo v5, "ConfXMLNotify"

    const-string/jumbo v6, "conferenceCall"

    invoke-virtual {v3, v4, v5, v6, p3}, Lcom/mediatek/ims/ImsCallSessionProxy;->logDebugMessagesWithNotifyFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    invoke-direct {p0, p1, p3}, Lcom/mediatek/ims/ImsCallSessionProxy$1;->parseXmlPackage(ILjava/lang/String;)Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;

    move-result-object v2

    .line 899
    .local v2, "xmlData":Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;
    if-nez v2, :cond_5d

    .line 900
    const-string/jumbo v3, "ImsCallSessionProxy"

    const-string/jumbo v4, "can\'t create xmlData object"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    return-void

    .line 905
    :cond_5d
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 907
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_7e

    .line 909
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-wrap0(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 910
    const-string/jumbo v3, "ImsCallSessionProxy"

    const-string/jumbo v4, "no user in conference xml, terminate the conference"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v3, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->terminate(I)V

    .line 913
    :cond_7d
    return-void

    .line 917
    :cond_7e
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mHostAddr:Ljava/lang/String;

    if-nez v3, :cond_85

    .line 918
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy$1;->setupHost(Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;)V

    .line 922
    :cond_85
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->getUserCount()I

    move-result v0

    .line 926
    .local v0, "userCount":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_92

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_b2

    .line 927
    :cond_92
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy$1;->fullUpdateParticipants(Ljava/util/List;)V

    .line 933
    :goto_95
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy$1;->isEmptyConference()Z

    move-result v3

    if-eqz v3, :cond_b6

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-wrap0(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 934
    const-string/jumbo v3, "ImsCallSessionProxy"

    const-string/jumbo v4, "no participants, terminate the conference"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v3, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->terminate(I)V

    .line 936
    return-void

    .line 929
    :cond_b2
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy$1;->partialUpdateParticipants(Ljava/util/List;)V

    goto :goto_95

    .line 939
    :cond_b6
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy$1;->notifyConfStateUpdate()V

    .line 886
    return-void
.end method

.method private isEmptyConference()Z
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 862
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 864
    .local v4, "userCount":I
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 865
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 866
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 867
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 868
    .local v0, "confInfo":Landroid/os/Bundle;
    const-string/jumbo v5, "status"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 869
    .local v3, "status":Ljava/lang/String;
    const-string/jumbo v5, "disconnected"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 870
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 874
    .end local v0    # "confInfo":Landroid/os/Bundle;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v3    # "status":Ljava/lang/String;
    :cond_36
    if-gt v4, v6, :cond_39

    .line 875
    return v6

    .line 877
    :cond_39
    const/4 v5, 0x0

    return v5
.end method

.method private notifyConfStateUpdate()V
    .registers 11

    .prologue
    .line 832
    const-string/jumbo v7, "ImsCallSessionProxy"

    const-string/jumbo v8, "notifyConfStateUpdate()"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v7

    if-nez v7, :cond_12

    .line 834
    return-void

    .line 837
    :cond_12
    new-instance v0, Lcom/android/ims/ImsConferenceState;

    invoke-direct {v0}, Lcom/android/ims/ImsConferenceState;-><init>()V

    .line 839
    .local v0, "confState":Lcom/android/ims/ImsConferenceState;
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 840
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 841
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 842
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    iget-object v9, v0, Lcom/android/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    const-string/jumbo v8, "ImsCallSessionProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "submit participants: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 846
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    :cond_5f
    const/4 v4, 0x0

    .line 847
    .local v4, "key":I
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "userInfo$iterator":Ljava/util/Iterator;
    :goto_66
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 848
    .local v5, "userInfo":Landroid/os/Bundle;
    iget-object v7, v0, Lcom/android/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    const-string/jumbo v7, "ImsCallSessionProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "submit unknow participants: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    .line 854
    .end local v5    # "userInfo":Landroid/os/Bundle;
    :cond_9c
    :try_start_9c
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-interface {v7, v8, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionConferenceStateUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsConferenceState;)V
    :try_end_a7
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_a7} :catch_a8

    .line 831
    :goto_a7
    return-void

    .line 856
    :catch_a8
    move-exception v1

    .line 857
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "ImsCallSessionProxy"

    const-string/jumbo v8, "RemoteException occurs when callSessionConferenceStateUpdated()"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7
.end method

.method private packUserInfo(Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;)Landroid/os/Bundle;
    .registers 7
    .param p1, "user"    # Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;

    .prologue
    .line 740
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;->getEntity()Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, "entity":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->-wrap1(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 742
    .local v1, "userAddr":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 743
    .local v2, "userInfo":Landroid/os/Bundle;
    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-string/jumbo v3, "display-text"

    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;->getDisplayText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string/jumbo v3, "endpoint"

    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;->getEndPoint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string/jumbo v3, "status"

    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get4(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    return-object v2
.end method

.method private parseXmlPackage(ILjava/lang/String;)Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;
    .registers 14
    .param p1, "len"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 689
    :try_start_1
    const-string/jumbo v2, "/sdcard/conferenceCall.xml"

    .line 691
    .local v2, "file":Ljava/lang/String;
    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "UTF-8"

    invoke-direct {v4, v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 692
    .local v4, "out":Ljava/io/OutputStreamWriter;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v4, p2, v8, v7}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V

    .line 693
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 696
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 697
    .local v3, "inStream":Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 698
    .local v1, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v5

    .line 699
    .local v5, "saxParse":Ljavax/xml/parsers/SAXParser;
    new-instance v6, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;

    invoke-direct {v6}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;-><init>()V

    .line 700
    .local v6, "xmlData":Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;
    if-nez v6, :cond_36

    .line 701
    return-object v10

    .line 703
    :cond_36
    invoke-virtual {v5, v3, v6}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_39} :catch_3a

    .line 704
    return-object v6

    .line 705
    .end local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "inStream":Ljava/io/InputStream;
    .end local v4    # "out":Ljava/io/OutputStreamWriter;
    .end local v5    # "saxParse":Ljavax/xml/parsers/SAXParser;
    .end local v6    # "xmlData":Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;
    :catch_3a
    move-exception v0

    .line 706
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v7, "ImsCallSessionProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Parsing exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    return-object v10
.end method

.method private partialUpdateParticipants(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 806
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;>;"
    const-string/jumbo v6, "ImsCallSessionProxy"

    const-string/jumbo v7, "partial update participants"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "user$iterator":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;

    .line 808
    .local v2, "user":Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;->getEntity()Ljava/lang/String;

    move-result-object v0

    .line 809
    .local v0, "entity":Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->-wrap1(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 810
    .local v4, "userAddr":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy$1;->packUserInfo(Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;)Landroid/os/Bundle;

    move-result-object v5

    .line 811
    .local v5, "userInfo":Landroid/os/Bundle;
    const-string/jumbo v6, "ImsCallSessionProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handle user: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " addr: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;->getStatus()Ljava/lang/String;

    move-result-object v1

    .line 815
    .local v1, "status":Ljava/lang/String;
    if-eqz v4, :cond_5c

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_95

    .line 816
    :cond_5c
    const-string/jumbo v6, "connected"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_74

    .line 817
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    const-string/jumbo v6, "ImsCallSessionProxy"

    const-string/jumbo v7, "add unknow participants"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 819
    :cond_74
    const-string/jumbo v6, "disconnected"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 821
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mUnknowParticipants:Ljava/util/List;

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 822
    const-string/jumbo v6, "ImsCallSessionProxy"

    const-string/jumbo v7, "remove unknow participants"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 825
    :cond_95
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    const-string/jumbo v6, "ImsCallSessionProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update participants: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 805
    .end local v0    # "entity":Ljava/lang/String;
    .end local v1    # "status":Ljava/lang/String;
    .end local v2    # "user":Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;
    .end local v4    # "userAddr":Ljava/lang/String;
    .end local v5    # "userInfo":Landroid/os/Bundle;
    :cond_b6
    return-void
.end method

.method private setupHost(Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;)V
    .registers 7
    .param p1, "xmlData"    # Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;

    .prologue
    const/4 v4, 0x0

    .line 713
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->getHostInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-wrap1(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mHostAddr:Ljava/lang/String;

    .line 714
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mHostAddr:Ljava/lang/String;

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mHostAddr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_41

    .line 715
    const-string/jumbo v2, "ImsCallSessionProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "host-info is included in xml: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mHostAddr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy$1;->finalizeHost(Ljava/util/List;)V

    .line 717
    return-void

    .line 721
    :cond_41
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get6(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_92

    .line 723
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get6(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 722
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 724
    .local v0, "telMngr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mHostAddr:Ljava/lang/String;

    .line 725
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mHostAddr:Ljava/lang/String;

    if-eqz v2, :cond_92

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mHostAddr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_92

    .line 726
    const-string/jumbo v2, "ImsCallSessionProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "host addr is get from getLine1Number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mHostAddr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy$1;->finalizeHost(Ljava/util/List;)V

    .line 728
    return-void

    .line 733
    .end local v0    # "telMngr":Landroid/telephony/TelephonyManager;
    :cond_92
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;

    .line 734
    .local v1, "user":Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;->getEntity()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-wrap1(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mHostAddr:Ljava/lang/String;

    .line 735
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy$1;->packUserInfo(Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mHostInfo:Landroid/os/Bundle;

    .line 736
    const-string/jumbo v2, "ImsCallSessionProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "consider the first user as host: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->mHostAddr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 944
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 946
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "ImsCallSessionProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "received broadcast "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get1(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5e

    .line 950
    const-string/jumbo v3, "android.intent.action.ims.conference"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 951
    const-string/jumbo v3, "call.id"

    const/4 v4, 0x3

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 953
    .local v1, "callId":I
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get1(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_55

    .line 955
    const-string/jumbo v3, "message.content"

    .line 954
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 956
    .local v2, "data":Ljava/lang/String;
    if-eqz v2, :cond_55

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 943
    .end local v1    # "callId":I
    .end local v2    # "data":Ljava/lang/String;
    :cond_55
    :goto_55
    return-void

    .line 957
    .restart local v1    # "callId":I
    .restart local v2    # "data":Ljava/lang/String;
    :cond_56
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {p0, v3, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy$1;->handleImsConfCallMessage(IILjava/lang/String;)V

    goto :goto_55

    .line 962
    .end local v1    # "callId":I
    .end local v2    # "data":Ljava/lang/String;
    :cond_5e
    const-string/jumbo v3, "ImsCallSessionProxy"

    const-string/jumbo v4, "can\'t handle conference message since no call ID. Abnormal Case"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55
.end method
