.class public Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;
.super Ljava/lang/Object;
.source "QtiPrimaryCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;
    }
.end annotation


# static fields
.field public static final COMPARE_CARDTYPE:I = 0x2

.field public static final COMPARE_IIN_CARDTYPE:I = 0x1

.field public static final COMPARE_MCCMNC:I = 0x3

.field private static final CONFIG_CURRENT_PRIMARY_SUB:Ljava/lang/String; = "config_current_primary_sub"

.field private static final CONFIG_DISABLE_DDS_PREFERENCE:Ljava/lang/String; = "config_disable_dds_preference"

.field private static final CONFIG_PRIMARY_SUB_IS_SETABLE:Ljava/lang/String; = "config_primary_sub_is_setable"

.field private static final CONFIG_SUB_SELECT_MODE_MANUAL:Ljava/lang/String; = "config_sub_select_mode_manual"

.field private static final DBG:Z = true

.field private static final DETECT_4G_CARD_PROPERTY_NAME:Ljava/lang/String; = "persist.radio.detect4gcard"

.field public static final DISABLE_USER_SELECTION:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "QtiPcUtils"

.field public static final PHONE_COUNT:I

.field private static final PRIMARY_CARD_7_5_PROPERTY_NAME:Ljava/lang/String; = "persist.radio.primary_7_5_mode"

.field private static final PRIMARY_CARD_PROPERTY_NAME:Ljava/lang/String; = "persist.radio.primarycard"

.field private static final PRIMARY_CARD_TYPE_2_PROPERTY_NAME:Ljava/lang/String; = "persist.radio.primary_type_2"

.field private static final PRIMCARYCARD_L_W_ENABLED:Z

.field private static final RAF_CDMA:I = 0x70

.field private static final RAF_EVDO:I = 0x3180

.field public static final SHOW_USER_SELECTION_FOR_EVERY_CHANGE:I = 0x3

.field public static final SHOW_USER_SELECTION_ON_PRIORITY_MATCH:I = 0x2

.field public static final SLOT_ID_0:I = 0x0

.field public static final SLOT_ID_1:I = 0x1

.field public static final SLOT_INVALID:I = -0x1

.field public static final SLOT_PRIORITY_MATCH:I = -0x2

.field private static final VDBG:Z = true

.field private static mConfigValue:I

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    .line 108
    sput v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    .line 118
    const-string/jumbo v0, "persist.radio.lw_enabled"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 117
    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PRIMCARYCARD_L_W_ENABLED:Z

    .line 25
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    sput-object p1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    .line 141
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->setConfigValue()V

    .line 142
    return-void
.end method

.method public static disableDds()Z
    .registers 3

    .prologue
    .line 260
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DISABLE_DDS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v0

    .line 261
    .local v0, "disableDds":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disableDds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    .line 262
    return v0
.end method

.method public static getConfigXml()Ljava/lang/String;
    .registers 1

    .prologue
    .line 199
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_4:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 200
    const-string/jumbo v0, "use priority_config_4.xml"

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logd(Ljava/lang/String;)V

    .line 201
    const-string/jumbo v0, "priority_config_4"

    return-object v0

    .line 202
    :cond_12
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_SUBSIDY_LOCKED_CONFIG:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 203
    const-string/jumbo v0, "subsidy_feature_config"

    return-object v0

    .line 204
    :cond_1e
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_3:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 205
    const-string/jumbo v0, "priority_config_3"

    return-object v0

    .line 206
    :cond_2a
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_2:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 207
    const-string/jumbo v0, "priority_config_2"

    return-object v0

    .line 208
    :cond_36
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_1:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 209
    const-string/jumbo v0, "priority_config_1"

    return-object v0

    .line 211
    :cond_42
    const-string/jumbo v0, "priority_config_2"

    return-object v0
.end method

.method public static getCurrentPrimarySlotFromDB(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 286
    const-string/jumbo v2, "config_current_primary_sub"

    const/4 v3, -0x1

    .line 285
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 287
    .local v0, "slotId":I
    return v0
.end method

.method public static getDefaultNwMode()I
    .registers 3

    .prologue
    .line 215
    const/4 v0, 0x1

    .line 216
    .local v0, "defNwMode":I
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GSM:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 217
    const/4 v0, 0x1

    .line 223
    :cond_a
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDefaultNwMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    .line 224
    return v0

    .line 218
    :cond_22
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GW:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 219
    const/4 v0, 0x0

    goto :goto_a

    .line 220
    :cond_2c
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GCWTL:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 221
    const/16 v0, 0x16

    goto :goto_a
.end method

.method public static getDefaultPrimarySlot()I
    .registers 3

    .prologue
    .line 242
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_PRIMARY_SLOT_1:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v0, 0x1

    .line 243
    .local v0, "defPrimarySlot":I
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDefaultPrimarySlot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    .line 244
    return v0

    .line 242
    .end local v0    # "defPrimarySlot":I
    :cond_21
    const/4 v0, 0x0

    .restart local v0    # "defPrimarySlot":I
    goto :goto_9
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;
    .registers 3

    .prologue
    .line 130
    const-class v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    monitor-enter v1

    .line 131
    :try_start_3
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    if-nez v0, :cond_13

    .line 132
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "QtiPrimaryCardUtils was not initialized!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_10

    .line 130
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0

    .line 134
    :cond_13
    :try_start_13
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_10

    monitor-exit v1

    return-object v0
.end method

.method public static getPriorityConfigComparator()I
    .registers 3

    .prologue
    .line 228
    const/4 v0, 0x2

    .line 229
    .local v0, "comparator":I
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_MCCMNC:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 230
    const/4 v0, 0x3

    .line 236
    :cond_a
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPriorityConfigComparator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    .line 238
    return v0

    .line 231
    :cond_22
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_CARDTYPE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 232
    const/4 v0, 0x2

    goto :goto_a

    .line 233
    :cond_2c
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_IIN_CARDTYPE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 234
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public static getUserSelectionMode()I
    .registers 3

    .prologue
    .line 267
    const/4 v0, 0x1

    .line 268
    .local v0, "userSelMode":I
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SHOW_USER_SELECTION_FOR_EVERY_CHANGE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 269
    const/4 v0, 0x3

    .line 275
    :cond_a
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getUserSelectionMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    .line 276
    return v0

    .line 270
    :cond_22
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SHOW_USER_SELECTION_ON_PRIORITY_MATCH:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 271
    const/4 v0, 0x2

    goto :goto_a

    .line 272
    :cond_2c
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DISABLE_USER_SELECTION:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 273
    const/4 v0, 0x1

    goto :goto_a
.end method

.method static init(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    const-class v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    monitor-enter v1

    .line 122
    :try_start_3
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    if-nez v0, :cond_e

    .line 123
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    :cond_e
    monitor-exit v1

    .line 126
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    return-object v0

    .line 121
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static is3gpp2NwMode(I)Z
    .registers 4
    .param p0, "nwMode"    # I

    .prologue
    .line 335
    invoke-static {p0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v0

    .line 336
    .local v0, "raf":I
    and-int/lit8 v1, v0, 0x70

    const/16 v2, 0x70

    if-eq v1, v2, :cond_10

    and-int/lit16 v1, v0, 0x3180

    const/16 v2, 0x3180

    if-ne v1, v2, :cond_12

    .line 337
    :cond_10
    const/4 v1, 0x1

    return v1

    .line 339
    :cond_12
    const/4 v1, 0x0

    return v1
.end method

.method private static isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z
    .registers 3
    .param p0, "config"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .prologue
    .line 280
    sget v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v1

    and-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static isDetect4gCardEnabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 317
    const-string/jumbo v2, "persist.radio.primarycard"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 318
    const-string/jumbo v2, "persist.radio.detect4gcard"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 317
    if-eqz v2, :cond_1b

    .line 319
    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-le v2, v0, :cond_19

    .line 317
    :goto_18
    return v0

    :cond_19
    move v0, v1

    .line 319
    goto :goto_18

    :cond_1b
    move v0, v1

    .line 317
    goto :goto_18
.end method

.method public static isPrimary7Plus5Enabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 329
    const-string/jumbo v2, "persist.radio.primarycard"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 330
    const-string/jumbo v2, "persist.radio.primary_7_5_mode"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 329
    if-eqz v2, :cond_1b

    .line 331
    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-le v2, v0, :cond_19

    .line 329
    :goto_18
    return v0

    :cond_19
    move v0, v1

    .line 331
    goto :goto_18

    :cond_1b
    move v0, v1

    .line 329
    goto :goto_18
.end method

.method public static isPrimaryCardFeatureEnabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 313
    const-string/jumbo v2, "persist.radio.primarycard"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_10

    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-le v2, v0, :cond_10

    :goto_f
    return v0

    :cond_10
    move v0, v1

    goto :goto_f
.end method

.method public static isPrimaryCardType2Enabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 323
    const-string/jumbo v2, "persist.radio.primarycard"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 324
    const-string/jumbo v2, "persist.radio.primary_type_2"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 323
    if-eqz v2, :cond_1b

    .line 325
    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-le v2, v0, :cond_19

    .line 323
    :goto_18
    return v0

    :cond_19
    move v0, v1

    .line 325
    goto :goto_18

    :cond_1b
    move v0, v1

    .line 323
    goto :goto_18
.end method

.method private static logd(Ljava/lang/String;)V
    .registers 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 343
    const-string/jumbo v0, "QtiPcUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 355
    const-string/jumbo v0, "QtiPcUtils"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 351
    const-string/jumbo v0, "QtiPcUtils"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-void
.end method

.method private static logv(Ljava/lang/String;)V
    .registers 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 347
    const-string/jumbo v0, "QtiPcUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-void
.end method

.method public static read4gFlag()Z
    .registers 3

    .prologue
    .line 254
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->READ_4G_FLAG:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v0

    .line 255
    .local v0, "read4g":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "read4gFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    .line 256
    return v0
.end method

.method public static saveDisableDdsPreferenceInDB(Z)V
    .registers 4
    .param p0, "disableDds"    # Z

    .prologue
    .line 302
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 303
    const-string/jumbo v2, "config_disable_dds_preference"

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    .line 302
    :goto_f
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 304
    return-void

    .line 303
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static saveEnableUserSelectioninDB(Z)V
    .registers 4
    .param p0, "enableUserSel"    # Z

    .prologue
    .line 297
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 298
    const-string/jumbo v2, "config_sub_select_mode_manual"

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    .line 297
    :goto_f
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 299
    return-void

    .line 298
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static savePrimarySetable(Z)V
    .registers 4
    .param p0, "isSetable"    # Z

    .prologue
    .line 308
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 309
    const-string/jumbo v2, "config_primary_sub_is_setable"

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    .line 308
    :goto_f
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 310
    return-void

    .line 309
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static savePrimarySlotToDB(I)V
    .registers 3
    .param p0, "primarySlot"    # I

    .prologue
    .line 292
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 293
    const-string/jumbo v1, "config_current_primary_sub"

    .line 292
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 294
    return-void
.end method

.method protected static setConfigValue()V
    .registers 8

    .prologue
    .line 146
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyLockFeatureEnabled()Z

    move-result v2

    .line 147
    .local v2, "isSubsidyLockFeatureEnabled":Z
    if-eqz v2, :cond_7d

    .line 148
    sget-object v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyLocked(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_7b

    .line 149
    sget-object v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyUnlocked(Landroid/content/Context;)Z

    move-result v3

    .line 150
    :goto_14
    if-eqz v2, :cond_7f

    .line 151
    sget-object v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isPermanentlyUnlocked(Landroid/content/Context;)Z

    move-result v1

    .line 152
    :goto_1c
    sget-object v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 153
    const v6, 0x1120046

    .line 152
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 156
    .local v0, "dualLTECapability":Z
    if-eqz v3, :cond_81

    .line 157
    sget-object v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_SUBSIDY_LOCKED_CONFIG:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v5

    .line 158
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_MCCMNC:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    .line 157
    or-int/2addr v5, v6

    .line 159
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SET_PRIMARY_ON_DEACT:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    .line 157
    or-int/2addr v5, v6

    .line 160
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_CARDTYPE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    .line 157
    or-int/2addr v5, v6

    .line 161
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SHOW_USER_SELECTION_ON_PRIORITY_MATCH:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    .line 157
    or-int/2addr v5, v6

    sput v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    .line 195
    :cond_4f
    :goto_4f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ConfigValue is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", in Binary:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    const/4 v7, 0x2

    invoke-static {v6, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logd(Ljava/lang/String;)V

    .line 196
    return-void

    .line 148
    .end local v0    # "dualLTECapability":Z
    :cond_7b
    const/4 v3, 0x1

    .local v3, "isSubsidyLockedOrRestricted":Z
    goto :goto_14

    .line 147
    .end local v3    # "isSubsidyLockedOrRestricted":Z
    :cond_7d
    const/4 v3, 0x0

    .restart local v3    # "isSubsidyLockedOrRestricted":Z
    goto :goto_14

    .line 150
    .end local v3    # "isSubsidyLockedOrRestricted":Z
    :cond_7f
    const/4 v1, 0x0

    .local v1, "isPermanentlyUnlocked":Z
    goto :goto_1c

    .line 162
    .end local v1    # "isPermanentlyUnlocked":Z
    .restart local v0    # "dualLTECapability":Z
    :cond_81
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isDetect4gCardEnabled()Z

    move-result v5

    if-nez v5, :cond_89

    if-eqz v1, :cond_c0

    .line 163
    :cond_89
    sget-boolean v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PRIMCARYCARD_L_W_ENABLED:Z

    if-eqz v5, :cond_b9

    sget-object v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GW:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v4

    .line 165
    .local v4, "nwmodeConfig":I
    :goto_93
    sget-object v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_2:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v5

    .line 166
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_CARDTYPE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    .line 165
    or-int/2addr v5, v6

    or-int/2addr v5, v4

    .line 168
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->READ_4G_FLAG:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    .line 165
    or-int/2addr v5, v6

    .line 169
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SET_PRIMARY_ON_DEACT:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    .line 165
    or-int/2addr v5, v6

    .line 170
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SHOW_USER_SELECTION_FOR_EVERY_CHANGE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    .line 165
    or-int/2addr v5, v6

    sput v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    goto :goto_4f

    .line 164
    .end local v4    # "nwmodeConfig":I
    :cond_b9
    sget-object v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GSM:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v4

    .restart local v4    # "nwmodeConfig":I
    goto :goto_93

    .line 171
    .end local v4    # "nwmodeConfig":I
    :cond_c0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isPrimary7Plus5Enabled()Z

    move-result v5

    if-nez v5, :cond_cc

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isPrimaryCardType2Enabled()Z

    move-result v5

    if-eqz v5, :cond_118

    .line 172
    :cond_cc
    sget-object v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_3:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v5

    .line 173
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_IIN_CARDTYPE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    .line 172
    or-int/2addr v5, v6

    .line 174
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GSM:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    .line 172
    or-int/2addr v5, v6

    .line 175
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SET_PRIMARY_ON_DEACT:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    .line 172
    or-int/2addr v5, v6

    .line 176
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SHOW_USER_SELECTION_ON_PRIORITY_MATCH:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    .line 172
    or-int/2addr v5, v6

    sput v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    .line 177
    if-eqz v0, :cond_4f

    .line 178
    sget-object v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_4:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v5

    .line 179
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_IIN_CARDTYPE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    .line 178
    or-int/2addr v5, v6

    .line 180
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GCWTL:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    .line 178
    or-int/2addr v5, v6

    .line 181
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SET_PRIMARY_ON_DEACT:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    .line 178
    or-int/2addr v5, v6

    .line 182
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SHOW_USER_SELECTION_ON_PRIORITY_MATCH:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    .line 178
    or-int/2addr v5, v6

    sput v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    goto/16 :goto_4f

    .line 184
    :cond_118
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isPrimaryCardFeatureEnabled()Z

    move-result v5

    if-eqz v5, :cond_144

    .line 186
    sget-object v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_1:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v5

    .line 187
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_IIN_CARDTYPE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    .line 186
    or-int/2addr v5, v6

    .line 188
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GSM:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    .line 186
    or-int/2addr v5, v6

    .line 189
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SET_PRIMARY_ON_DEACT:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    .line 186
    or-int/2addr v5, v6

    .line 190
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SHOW_USER_SELECTION_ON_PRIORITY_MATCH:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    .line 186
    or-int/2addr v5, v6

    sput v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    goto/16 :goto_4f

    .line 192
    :cond_144
    const/4 v5, 0x0

    sput v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    goto/16 :goto_4f
.end method

.method public static setPrimaryCardOnDeAct()Z
    .registers 3

    .prologue
    .line 248
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SET_PRIMARY_ON_DEACT:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v0

    .line 249
    .local v0, "setPcOnDeact":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPrimaryCardOnDeAct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    .line 250
    return v0
.end method
