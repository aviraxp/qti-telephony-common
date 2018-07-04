.class Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;
.super Ljava/lang/Object;
.source "QtiCardInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CardInfo"
.end annotation


# instance fields
.field private mCardType:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

.field private mIccId:Ljava/lang/String;

.field private mMCCMNCLoaded:Z

.field private mMccMnc:Ljava/lang/String;

.field private mProvisionState:I

.field private mUpdateCardTypeState:I


# direct methods
.method static synthetic -get0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    .prologue
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mCardType:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    return-object v0
.end method

.method static synthetic -get1(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    .prologue
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mIccId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)Z
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    .prologue
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mMCCMNCLoaded:Z

    return v0
.end method

.method static synthetic -get3(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    .prologue
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mMccMnc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)I
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    .prologue
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mProvisionState:I

    return v0
.end method

.method static synthetic -get5(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)I
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    .prologue
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mUpdateCardTypeState:I

    return v0
.end method

.method static synthetic -set0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;
    .param p1, "-value"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    .prologue
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mCardType:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    return-object p1
.end method

.method static synthetic -set1(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mIccId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Z)Z
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mMCCMNCLoaded:Z

    return p1
.end method

.method static synthetic -set3(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mMccMnc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;I)I
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mProvisionState:I

    return p1
.end method

.method static synthetic -set5(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;I)I
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mUpdateCardTypeState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)V
    .registers 1
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    .prologue
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->reset()V

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 92
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->UNKNOWN:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mCardType:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    .line 93
    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mIccId:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mMccMnc:Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mUpdateCardTypeState:I

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mProvisionState:I

    .line 97
    return-void
.end method


# virtual methods
.method public getIccId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->setPrimaryCardOnDeAct()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mProvisionState:I

    if-nez v0, :cond_c

    .line 102
    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_c
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mIccId:Ljava/lang/String;

    return-object v0
.end method

.method public getMccMnc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->setPrimaryCardOnDeAct()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mProvisionState:I

    if-nez v0, :cond_c

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 113
    :cond_c
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mMccMnc:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisionState()I
    .registers 2

    .prologue
    .line 118
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mProvisionState:I

    return v0
.end method

.method public isCardInfoAvailable(I)Z
    .registers 8
    .param p1, "slotId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 131
    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mUpdateCardTypeState:I

    if-eqz v3, :cond_4b

    .line 132
    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mUpdateCardTypeState:I

    if-eq v3, v4, :cond_49

    const/4 v1, 0x1

    .line 134
    .local v1, "isAvailable":Z
    :goto_b
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyLockFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 135
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->-get1()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isPermanentlyUnlocked(Landroid/content/Context;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 134
    if-eqz v3, :cond_48

    .line 136
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    .line 138
    .local v2, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mProvisionState:I

    if-ne v3, v4, :cond_48

    .line 139
    if-eqz v2, :cond_48

    .line 140
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    if-eqz v3, :cond_48

    .line 142
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 143
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v3, v4, :cond_42

    .line 144
    iget-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mMCCMNCLoaded:Z

    and-int/2addr v1, v3

    .line 147
    .end local v1    # "isAvailable":Z
    :cond_42
    iget-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mMCCMNCLoaded:Z

    if-nez v3, :cond_48

    .line 148
    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mMccMnc:Ljava/lang/String;

    .line 152
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v2    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_48
    return v1

    .line 132
    :cond_49
    const/4 v1, 0x0

    .restart local v1    # "isAvailable":Z
    goto :goto_b

    .line 131
    .end local v1    # "isAvailable":Z
    :cond_4b
    const/4 v1, 0x0

    .restart local v1    # "isAvailable":Z
    goto :goto_b
.end method

.method public isCardTypeSame(Ljava/lang/String;)Z
    .registers 4
    .param p1, "cardType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->setPrimaryCardOnDeAct()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mProvisionState:I

    if-nez v0, :cond_c

    .line 124
    return v1

    .line 126
    :cond_c
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->valueOf(Ljava/lang/String;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mCardType:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
