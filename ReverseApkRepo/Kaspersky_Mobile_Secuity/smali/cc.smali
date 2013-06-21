.class public final Lcc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/antitheft/gui/SimWatchSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antitheft/gui/SimWatchSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcc;->a:Lcom/kms/antitheft/gui/SimWatchSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcc;->a:Lcom/kms/antitheft/gui/SimWatchSettingsActivity;

    invoke-virtual {v0}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->finish()V

    .line 216
    return-void
.end method
