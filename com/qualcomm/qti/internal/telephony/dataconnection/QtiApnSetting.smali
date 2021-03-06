.class public Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting;
.super Lcom/android/internal/telephony/dataconnection/ApnSetting;
.source "QtiApnSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;
    }
.end annotation


# instance fields
.field public profileId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZIIIILjava/lang/String;Ljava/lang/String;)V
    .registers 28
    .param p1, "id"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "carrier"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "proxy"    # Ljava/lang/String;
    .param p6, "port"    # Ljava/lang/String;
    .param p7, "mmsc"    # Ljava/lang/String;
    .param p8, "mmsProxy"    # Ljava/lang/String;
    .param p9, "mmsPort"    # Ljava/lang/String;
    .param p10, "user"    # Ljava/lang/String;
    .param p11, "password"    # Ljava/lang/String;
    .param p12, "authType"    # I
    .param p13, "types"    # [Ljava/lang/String;
    .param p14, "protocol"    # Ljava/lang/String;
    .param p15, "roamingProtocol"    # Ljava/lang/String;
    .param p16, "carrierEnabled"    # Z
    .param p17, "bearer"    # I
    .param p18, "bearerBitMask"    # I
    .param p19, "profileId"    # I
    .param p20, "modemCognitive"    # Z
    .param p21, "maxConns"    # I
    .param p22, "waitTime"    # I
    .param p23, "maxConnsTime"    # I
    .param p24, "mtu"    # I
    .param p25, "mvnoType"    # Ljava/lang/String;
    .param p26, "mvnoMatchData"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct/range {p0 .. p26}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZIIIILjava/lang/String;Ljava/lang/String;)V

    .line 29
    move/from16 v0, p19

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting;->profileId:I

    .line 30
    return-void
.end method


# virtual methods
.method public getApnProfileType()Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;
    .registers 2

    .prologue
    .line 49
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;->PROFILE_TYPE_APN:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    return-object v0
.end method

.method public getProfileId()I
    .registers 2

    .prologue
    .line 53
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting;->profileId:I

    return v0
.end method

.method public toHash()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    const-string/jumbo v0, "QtiApnSetting"

    return-object v0
.end method
