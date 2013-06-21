.class public final LbR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/antitheft/gui/InfoActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antitheft/gui/InfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, LbR;->a:Lcom/kms/antitheft/gui/InfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, LbR;->a:Lcom/kms/antitheft/gui/InfoActivity;

    invoke-virtual {v0}, Lcom/kms/antitheft/gui/InfoActivity;->finish()V

    .line 51
    return-void
.end method
