.class Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;
.super Landroid/os/Handler;
.source "SubsidyLockSettingsObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubsidySettingsHandler"
.end annotation


# static fields
.field public static final MSG_ALL_CARDS_READY:I = 0x4

.field public static final MSG_EXIT:I = 0x3

.field public static final MSG_LOCKED:I = 0x0

.field public static final MSG_RESTRICTED:I = 0x1

.field public static final MSG_SET_PRIMARY_CARD:I = 0x5

.field public static final MSG_UNLOCKED:I = 0x2

.field static final PROVISIONED:I = 0x1

.field static final SUCCESS:I


# instance fields
.field private mNumSimSlots:I

.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;Landroid/os/Looper;)V
    .registers 4
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    .line 183
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->mNumSimSlots:I

    .line 184
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->mNumSimSlots:I

    .line 185
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 189
    const-string/jumbo v8, "SubsidyLockSettingsObserver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " handleMessage, event  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " current state "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->-get1()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_1be

    .line 278
    :cond_33
    :goto_33
    return-void

    .line 192
    :pswitch_34
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    invoke-virtual {v8, v11}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->onChange(Z)V

    goto :goto_33

    .line 196
    :pswitch_3a
    const-string/jumbo v8, "extphone"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 195
    invoke-static {v8}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v3

    .line 198
    .local v3, "mExtTelephony":Lorg/codeaurora/internal/IExtTelephony;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_46
    :try_start_46
    iget v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->mNumSimSlots:I

    if-ge v2, v8, :cond_9c

    .line 199
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    invoke-static {v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->-get0(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v7

    .line 201
    .local v7, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v7, :cond_60

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v8

    if-nez v8, :cond_84

    .line 202
    :cond_60
    const-string/jumbo v8, "SubsidyLockSettingsObserver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid sub info for slot id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 203
    const-string/jumbo v10, ", not proceeding further."

    .line 202
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_81
    :goto_81
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 206
    :cond_84
    invoke-interface {v3, v2}, Lorg/codeaurora/internal/IExtTelephony;->isPrimaryCarrierSlotId(I)Z

    move-result v8

    if-eqz v8, :cond_ab

    .line 207
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    invoke-static {v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->-get0(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->make(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->activateUiccCard(I)I
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_97} :catch_98
    .catch Ljava/lang/NullPointerException; {:try_start_46 .. :try_end_97} :catch_d4

    goto :goto_81

    .line 220
    .end local v7    # "sir":Landroid/telephony/SubscriptionInfo;
    :catch_98
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 225
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_9c
    :goto_9c
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    const/16 v9, 0x66

    invoke-static {v8, v9}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->-wrap0(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;I)V

    .line 226
    invoke-virtual {p0, v13}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto :goto_33

    .line 209
    .restart local v7    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_ab
    :try_start_ab
    invoke-interface {v3, v2}, Lorg/codeaurora/internal/IExtTelephony;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v8

    if-ne v8, v12, :cond_81

    .line 211
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    invoke-static {v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->-get0(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->make(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->deactivateUiccCard(I)I

    move-result v6

    .line 213
    .local v6, "result":I
    if-nez v6, :cond_81

    .line 214
    new-instance v8, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;

    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    invoke-direct {v8, v9}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;-><init>(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;)V

    .line 215
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 214
    invoke-virtual {v8, v9}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;->addRecord(Ljava/lang/String;)V
    :try_end_d3
    .catch Landroid/os/RemoteException; {:try_start_ab .. :try_end_d3} :catch_98
    .catch Ljava/lang/NullPointerException; {:try_start_ab .. :try_end_d3} :catch_d4

    goto :goto_81

    .line 222
    .end local v6    # "result":I
    .end local v7    # "sir":Landroid/telephony/SubscriptionInfo;
    :catch_d4
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9c

    .line 230
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .end local v2    # "i":I
    .end local v3    # "mExtTelephony":Lorg/codeaurora/internal/IExtTelephony;
    :pswitch_d9
    const-string/jumbo v8, "extphone"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 229
    invoke-static {v8}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v4

    .line 232
    .local v4, "mExtTelephony1":Lorg/codeaurora/internal/IExtTelephony;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_e5
    :try_start_e5
    iget v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->mNumSimSlots:I

    if-ge v2, v8, :cond_154

    .line 233
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    invoke-static {v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->-get0(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v7

    .line 235
    .restart local v7    # "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v7, :cond_ff

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v8

    if-nez v8, :cond_123

    .line 236
    :cond_ff
    const-string/jumbo v8, "SubsidyLockSettingsObserver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid subscription info for slot id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 237
    const-string/jumbo v10, ", not proceeding further."

    .line 236
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_120
    :goto_120
    add-int/lit8 v2, v2, 0x1

    goto :goto_e5

    .line 240
    :cond_123
    invoke-interface {v4, v2}, Lorg/codeaurora/internal/IExtTelephony;->isPrimaryCarrierSlotId(I)Z

    move-result v8

    if-nez v8, :cond_16e

    .line 241
    new-instance v5, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;

    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    invoke-direct {v5, v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;-><init>(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;)V

    .line 243
    .local v5, "records":Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 242
    invoke-virtual {v5, v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;->isDeactivated(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_120

    .line 244
    invoke-interface {v4, v2}, Lorg/codeaurora/internal/IExtTelephony;->activateUiccCard(I)I

    move-result v6

    .line 245
    .restart local v6    # "result":I
    if-nez v6, :cond_120

    .line 247
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 246
    invoke-virtual {v5, v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;->removeRecord(Ljava/lang/String;)V
    :try_end_14f
    .catch Landroid/os/RemoteException; {:try_start_e5 .. :try_end_14f} :catch_150
    .catch Ljava/lang/NullPointerException; {:try_start_e5 .. :try_end_14f} :catch_18e

    goto :goto_120

    .line 255
    .end local v5    # "records":Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;
    .end local v6    # "result":I
    .end local v7    # "sir":Landroid/telephony/SubscriptionInfo;
    :catch_150
    move-exception v0

    .line 256
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 261
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_154
    :goto_154
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_165

    .line 262
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v9, v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->-wrap0(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;I)V

    .line 264
    :cond_165
    invoke-virtual {p0, v13}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_33

    .line 250
    .restart local v7    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_16e
    :try_start_16e
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    invoke-static {v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->-get0(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyUnlocked(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_120

    .line 251
    invoke-interface {v4, v2}, Lorg/codeaurora/internal/IExtTelephony;->isPrimaryCarrierSlotId(I)Z

    move-result v8

    .line 250
    if-eqz v8, :cond_120

    .line 252
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    invoke-static {v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->-get0(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->make(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->activateUiccCard(I)I
    :try_end_18d
    .catch Landroid/os/RemoteException; {:try_start_16e .. :try_end_18d} :catch_150
    .catch Ljava/lang/NullPointerException; {:try_start_16e .. :try_end_18d} :catch_18e

    goto :goto_120

    .line 257
    .end local v7    # "sir":Landroid/telephony/SubscriptionInfo;
    :catch_18e
    move-exception v1

    .line 258
    .restart local v1    # "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_154

    .line 267
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .end local v2    # "i":I
    .end local v4    # "mExtTelephony1":Lorg/codeaurora/internal/IExtTelephony;
    :pswitch_193
    const/16 v8, 0x64

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v12, v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_33

    .line 270
    :pswitch_1a2
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    if-eq v8, v9, :cond_33

    .line 271
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Looper;->quitSafely()V

    goto/16 :goto_33

    .line 275
    :pswitch_1b5
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->trySetPrimarySub()V

    goto/16 :goto_33

    .line 190
    :pswitch_data_1be
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_d9
        :pswitch_193
        :pswitch_1a2
        :pswitch_34
        :pswitch_1b5
    .end packed-switch
.end method
