.class public final LdR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/gui/KMSManageSpaceActivity;


# direct methods
.method public constructor <init>(Lcom/kms/gui/KMSManageSpaceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, LdR;->a:Lcom/kms/gui/KMSManageSpaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, LdR;->a:Lcom/kms/gui/KMSManageSpaceActivity;

    invoke-virtual {v0}, Lcom/kms/gui/KMSManageSpaceActivity;->finish()V

    .line 24
    return-void
.end method
