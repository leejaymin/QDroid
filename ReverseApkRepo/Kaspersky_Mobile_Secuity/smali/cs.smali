.class final Lcs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcq;


# direct methods
.method constructor <init>(Lcq;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcs;->a:Lcq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcs;->a:Lcq;

    iget-object v1, v1, Lcq;->a:Lcom/kms/antitheft/gui/SmsFindSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    return-void
.end method
