.class public final Lcd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/kms/antitheft/gui/SimWatchSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antitheft/gui/SimWatchSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcd;->a:Lcom/kms/antitheft/gui/SimWatchSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 223
    iget-object v0, p0, Lcd;->a:Lcom/kms/antitheft/gui/SimWatchSettingsActivity;

    invoke-virtual {v0}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->finish()V

    .line 224
    return-void
.end method
