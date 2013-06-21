.class public final Lcp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcp;->a:Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Lcp;->a:Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;

    invoke-virtual {v0}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->finish()V

    .line 316
    return-void
.end method
