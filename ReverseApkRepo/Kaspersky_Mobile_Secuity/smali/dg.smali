.class public final Ldg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/gui/KMSCommonSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/kms/gui/KMSCommonSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Ldg;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 274
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ldg;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    const-class v2, Lcom/kms/gui/KMSHelpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 275
    const-string v1, "com.kms.gui.helpid"

    iget-object v2, p0, Ldg;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-virtual {v2}, Lcom/kms/gui/KMSCommonSettingsActivity;->c_()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    iget-object v1, p0, Ldg;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/kms/gui/KMSCommonSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 277
    return-void
.end method
