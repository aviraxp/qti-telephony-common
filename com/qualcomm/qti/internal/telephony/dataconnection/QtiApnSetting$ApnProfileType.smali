.class public final enum Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;
.super Ljava/lang/Enum;
.source "QtiApnSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApnProfileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

.field public static final enum PROFILE_TYPE_APN:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

.field public static final enum PROFILE_TYPE_CDMA:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

.field public static final enum PROFILE_TYPE_OMH:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;


# instance fields
.field id:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    const-string/jumbo v1, "PROFILE_TYPE_APN"

    invoke-direct {v0, v1, v2, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;->PROFILE_TYPE_APN:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    .line 34
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    const-string/jumbo v1, "PROFILE_TYPE_CDMA"

    invoke-direct {v0, v1, v3, v3}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;->PROFILE_TYPE_CDMA:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    .line 35
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    const-string/jumbo v1, "PROFILE_TYPE_OMH"

    invoke-direct {v0, v1, v4, v4}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;->PROFILE_TYPE_OMH:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;->PROFILE_TYPE_APN:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;->PROFILE_TYPE_CDMA:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;->PROFILE_TYPE_OMH:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;->$VALUES:[Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "i"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;->id:I

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;->$VALUES:[Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    return-object v0
.end method


# virtual methods
.method public getid()I
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;->id:I

    return v0
.end method
