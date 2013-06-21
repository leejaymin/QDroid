.class public final LdP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/gui/KMSMain;


# direct methods
.method public constructor <init>(Lcom/kms/gui/KMSMain;)V
    .locals 0
    .parameter

    .prologue
    .line 640
    iput-object p1, p0, LdP;->a:Lcom/kms/gui/KMSMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 644
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, LdP;->a:Lcom/kms/gui/KMSMain;

    const-class v2, Lcom/kms/privacyprotection/gui/PPSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 645
    iget-object v1, p0, LdP;->a:Lcom/kms/gui/KMSMain;

    invoke-virtual {v1, v0}, Lcom/kms/gui/KMSMain;->startActivity(Landroid/content/Intent;)V

    .line 646
    return-void
.end method
