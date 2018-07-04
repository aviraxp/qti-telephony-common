.class Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;
.super Ljava/lang/Object;
.source "SubsidyLockSettingsObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIMDeactivationRecords"
.end annotation


# static fields
.field private static final KEY_DEACTIVATION_RECORD:Ljava/lang/String; = "key_deactivation_record"

.field private static final PREFS_NAME:Ljava/lang/String; = "deactivation_record"


# instance fields
.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mSimRecords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;)V
    .registers 5
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;->mSimRecords:Ljava/util/Set;

    .line 137
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->-get0(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "deactivation_record"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 138
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;->parse()V

    .line 139
    return-void
.end method

.method private parse()V
    .registers 5

    .prologue
    .line 143
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "key_deactivation_record"

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 144
    .local v0, "simRecords":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;->mSimRecords:Ljava/util/Set;

    .line 145
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;->mSimRecords:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 146
    return-void
.end method


# virtual methods
.method public addRecord(Ljava/lang/String;)V
    .registers 5
    .param p1, "subId"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;->isDeactivated(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 150
    :cond_7
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;->mSimRecords:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "key_deactivation_record"

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;->mSimRecords:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 152
    return-void
.end method

.method public isDeactivated(Ljava/lang/String;)Z
    .registers 3
    .param p1, "subId"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;->mSimRecords:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeRecord(Ljava/lang/String;)V
    .registers 5
    .param p1, "subId"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;->mSimRecords:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 156
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;->mSimRecords:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 158
    :cond_d
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "key_deactivation_record"

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;->mSimRecords:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 159
    return-void
.end method
