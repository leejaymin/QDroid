.class public final Lch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lch;->a:Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lch;->a:Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->a(Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;Z)Z

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Lch;->a:Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 135
    return-void
.end method
