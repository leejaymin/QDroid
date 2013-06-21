.class public final LbZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/antitheft/gui/LockScreenActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/kms/antitheft/gui/LockScreenActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LbZ;-><init>(Lcom/kms/antitheft/gui/LockScreenActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/antitheft/gui/LockScreenActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, LbZ;->a:Lcom/kms/antitheft/gui/LockScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, LbZ;->a:Lcom/kms/antitheft/gui/LockScreenActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kms/antitheft/gui/LockScreenActivity;->a(Lcom/kms/antitheft/gui/LockScreenActivity;Z)V

    .line 127
    return-void
.end method
