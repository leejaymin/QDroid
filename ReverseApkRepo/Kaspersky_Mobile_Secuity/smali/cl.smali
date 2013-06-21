.class public final Lcl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcl;->a:Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 258
    invoke-static {}, Lcom/kms/antitheft/DataWipeFoldersStorage;->getInstance()Lcom/kms/antitheft/DataWipeFoldersStorage;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/kms/antitheft/DataWipeFoldersStorage;->removeAllFolders()V

    .line 260
    invoke-virtual {v0}, Lcom/kms/antitheft/DataWipeFoldersStorage;->toFile()V

    .line 261
    iget-object v0, p0, Lcl;->a:Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;

    invoke-static {v0}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->b(Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;)[Ldk;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    check-cast v0, Ldj;

    iget-object v1, p0, Lcl;->a:Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;

    invoke-static {v1}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->a(Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldj;->a(Ljava/util/List;)V

    .line 262
    return-void
.end method
