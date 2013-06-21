.class public final LdG;
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
    .line 743
    iput-object p1, p0, LdG;->a:Lcom/kms/gui/KMSMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 746
    iget-object v0, p0, LdG;->a:Lcom/kms/gui/KMSMain;

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Lcom/kms/gui/KMSMain;->a(Lcom/kms/gui/KMSMain;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    :goto_0
    return-void

    .line 749
    :cond_0
    iget-object v0, p0, LdG;->a:Lcom/kms/gui/KMSMain;

    invoke-virtual {v0}, Lcom/kms/gui/KMSMain;->c()V

    goto :goto_0
.end method
