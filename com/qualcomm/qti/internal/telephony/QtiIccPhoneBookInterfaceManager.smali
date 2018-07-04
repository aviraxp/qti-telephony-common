.class public Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;
.super Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.source "QtiIccPhoneBookInterfaceManager.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "QtiIccPhoneBookInterfaceManager"


# instance fields
.field private mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 6
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 54
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->isSimPhoneBookEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 55
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    if-nez v0, :cond_1e

    .line 56
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    .line 57
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    iget-object v3, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 56
    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;-><init>(Landroid/content/Context;ILcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    .line 60
    :cond_1e
    return-void
.end method

.method private isSimPhoneBookEnabled()Z
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    const v1, 0x1120089

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 65
    const/4 v0, 0x1

    return v0

    .line 67
    :cond_15
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 73
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    :cond_9
    return-void
.end method

.method public getAdnRecordsCapacity()[I
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 171
    const/16 v1, 0xa

    new-array v0, v1, [I

    .line 173
    .local v0, "capacity":[I
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->isSimPhoneBookEnabled()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 174
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    if-eqz v1, :cond_100

    .line 175
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getAdnCount()I

    move-result v1

    aput v1, v0, v3

    .line 176
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getUsedAdnCount()I

    move-result v1

    aput v1, v0, v4

    .line 177
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getEmailCount()I

    move-result v1

    aput v1, v0, v5

    .line 178
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getUsedEmailCount()I

    move-result v1

    aput v1, v0, v6

    .line 179
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getAnrCount()I

    move-result v1

    aput v1, v0, v7

    .line 180
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getUsedAnrCount()I

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 181
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getMaxNameLen()I

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 182
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getMaxNumberLen()I

    move-result v1

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 183
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getMaxEmailLen()I

    move-result v1

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 184
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getMaxAnrLen()I

    move-result v1

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 189
    :cond_6a
    :goto_6a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAdnRecordsCapacity: max adn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 190
    const-string/jumbo v2, ", used adn="

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 190
    aget v2, v0, v4

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 190
    const-string/jumbo v2, ", max email="

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 190
    aget v2, v0, v5

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 191
    const-string/jumbo v2, ", used email="

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 191
    aget v2, v0, v6

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 191
    const-string/jumbo v2, ", max anr="

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 191
    aget v2, v0, v7

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 192
    const-string/jumbo v2, ", used anr="

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 192
    const/4 v2, 0x5

    aget v2, v0, v2

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 192
    const-string/jumbo v2, ", max name length ="

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 192
    const/4 v2, 0x6

    aget v2, v0, v2

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 193
    const-string/jumbo v2, ", max number length ="

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 193
    const/4 v2, 0x7

    aget v2, v0, v2

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 193
    const-string/jumbo v2, ", max email length ="

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 193
    const/16 v2, 0x8

    aget v2, v0, v2

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 194
    const-string/jumbo v2, ", max anr length ="

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 194
    const/16 v2, 0x9

    aget v2, v0, v2

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 196
    return-object v0

    .line 186
    :cond_100
    const-string/jumbo v1, "mAdnCache is NULL when getAdnRecordsCapacity."

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    goto/16 :goto_6a
.end method

.method public getAdnRecordsInEf(I)Ljava/util/List;
    .registers 7
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 81
    const-string/jumbo v3, "android.permission.READ_CONTACTS"

    .line 80
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_18

    .line 83
    new-instance v2, Ljava/lang/SecurityException;

    .line 84
    const-string/jumbo v3, "Requires android.permission.READ_CONTACTS permission"

    .line 83
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_18
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAdnRecordsInEF: efid=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 91
    :try_start_3e
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->checkThread()V

    .line 92
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 93
    .local v1, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mBaseHandler:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 95
    .local v0, "response":Landroid/os/Message;
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->isSimPhoneBookEnabled()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 96
    const/16 v2, 0x4f30

    if-eq p1, v2, :cond_5c

    const/16 v2, 0x6f3a

    if-ne p1, v2, :cond_76

    .line 97
    :cond_5c
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    if-eqz v2, :cond_6c

    .line 98
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v2, v0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->requestLoadAllAdnLike(Landroid/os/Message;)V

    .line 99
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    :try_end_68
    .catchall {:try_start_3e .. :try_end_68} :catchall_73

    :goto_68
    monitor-exit v3

    .line 113
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    return-object v2

    .line 101
    :cond_6c
    :try_start_6c
    const-string/jumbo v2, "Failure while trying to load from SIM due to uninit  sim pb adncache"

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_6c .. :try_end_72} :catchall_73

    goto :goto_68

    .line 90
    .end local v0    # "response":Landroid/os/Message;
    .end local v1    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_73
    move-exception v2

    monitor-exit v3

    throw v2

    .line 104
    .restart local v0    # "response":Landroid/os/Message;
    .restart local v1    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_76
    :try_start_76
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v2, :cond_89

    .line 105
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 106
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v4

    .line 105
    invoke-virtual {v2, p1, v4, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 107
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    goto :goto_68

    .line 109
    :cond_89
    const-string/jumbo v2, "Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_76 .. :try_end_8f} :catchall_73

    goto :goto_68
.end method

.method public updateAdnRecordsWithContentValuesInEfBySearch(ILandroid/content/ContentValues;Ljava/lang/String;)Z
    .registers 28
    .param p1, "efid"    # I
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "pin2"    # Ljava/lang/String;

    .prologue
    .line 120
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 121
    const-string/jumbo v5, "android.permission.WRITE_CONTACTS"

    .line 120
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1a

    .line 122
    new-instance v4, Ljava/lang/SecurityException;

    const-string/jumbo v5, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 125
    :cond_1a
    const-string/jumbo v4, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 126
    .local v21, "oldTag":Ljava/lang/String;
    const-string/jumbo v4, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 127
    .local v15, "newTag":Ljava/lang/String;
    const-string/jumbo v4, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 128
    .local v20, "oldPhoneNumber":Ljava/lang/String;
    const-string/jumbo v4, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 129
    .local v14, "newPhoneNumber":Ljava/lang/String;
    const-string/jumbo v4, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 130
    .local v18, "oldEmail":Ljava/lang/String;
    const-string/jumbo v4, "newEmails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 131
    .local v12, "newEmail":Ljava/lang/String;
    const-string/jumbo v4, "anrs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 132
    .local v16, "oldAnr":Ljava/lang/String;
    const-string/jumbo v4, "newAnrs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 133
    .local v10, "newAnr":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_119

    const/16 v19, 0x0

    .line 134
    :goto_6a
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_123

    const/4 v13, 0x0

    .line 135
    :goto_71
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12b

    const/16 v17, 0x0

    .line 136
    :goto_79
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_135

    const/4 v11, 0x0

    .line 137
    :goto_80
    invoke-virtual/range {p0 .. p1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAdnRecordsWithContentValuesInEfBySearch: efid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", values = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 141
    const-string/jumbo v5, ", pin2="

    .line 140
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 143
    :try_start_c0
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->checkThread()V

    .line 144
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSuccess:Z

    .line 145
    new-instance v22, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 146
    .local v22, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mBaseHandler:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;

    const/4 v5, 0x3

    move-object/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 147
    .local v9, "response":Landroid/os/Message;
    new-instance v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 148
    .local v6, "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v7, v15, v14, v13, v11}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 149
    .local v7, "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->isSimPhoneBookEnabled()Z

    move-result v4

    if-eqz v4, :cond_149

    .line 150
    const/16 v4, 0x4f30

    move/from16 v0, p1

    if-eq v0, v4, :cond_ff

    const/16 v4, 0x6f3a

    move/from16 v0, p1

    if-ne v0, v4, :cond_149

    .line 151
    :cond_ff
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    if-eqz v4, :cond_13d

    .line 152
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v4, v6, v7, v9}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->updateSimPbAdnBySearch(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/os/Message;)V

    .line 153
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    :try_end_113
    .catchall {:try_start_c0 .. :try_end_113} :catchall_146

    :goto_113
    monitor-exit v23

    .line 166
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSuccess:Z

    return v4

    .line 133
    .end local v6    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v7    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9    # "response":Landroid/os/Message;
    .end local v22    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_119
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .local v19, "oldEmailArray":[Ljava/lang/String;
    goto/16 :goto_6a

    .line 134
    .end local v19    # "oldEmailArray":[Ljava/lang/String;
    :cond_123
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .local v13, "newEmailArray":[Ljava/lang/String;
    goto/16 :goto_71

    .line 135
    .end local v13    # "newEmailArray":[Ljava/lang/String;
    :cond_12b
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->getAnrStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .local v17, "oldAnrArray":[Ljava/lang/String;
    goto/16 :goto_79

    .line 136
    .end local v17    # "oldAnrArray":[Ljava/lang/String;
    :cond_135
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->getAnrStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .local v11, "newAnrArray":[Ljava/lang/String;
    goto/16 :goto_80

    .line 155
    .end local v11    # "newAnrArray":[Ljava/lang/String;
    .restart local v6    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v7    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v9    # "response":Landroid/os/Message;
    .restart local v22    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_13d
    :try_start_13d
    const-string/jumbo v4, "Failure while trying to update by search due to uninit sim pb adncache"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_145
    .catchall {:try_start_13d .. :try_end_145} :catchall_146

    goto :goto_113

    .line 142
    .end local v6    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v7    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9    # "response":Landroid/os/Message;
    .end local v22    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_146
    move-exception v4

    monitor-exit v23

    throw v4

    .line 158
    .restart local v6    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v7    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v9    # "response":Landroid/os/Message;
    .restart local v22    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_149
    :try_start_149
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v4, :cond_162

    .line 159
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move/from16 v5, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAdnBySearch(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V

    .line 160
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    goto :goto_113

    .line 162
    :cond_162
    const-string/jumbo v4, "Failure while trying to update by search due to uninitialised adncache"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_16a
    .catchall {:try_start_149 .. :try_end_16a} :catchall_146

    goto :goto_113
.end method
