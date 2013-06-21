.class public final Lca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/antitheft/gui/LockScreenActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/kms/antitheft/gui/LockScreenActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lca;-><init>(Lcom/kms/antitheft/gui/LockScreenActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/antitheft/gui/LockScreenActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lca;->a:Lcom/kms/antitheft/gui/LockScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 136
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 138
    iget-object v0, p0, Lca;->a:Lcom/kms/antitheft/gui/LockScreenActivity;

    invoke-static {v0}, Lcom/kms/antitheft/gui/LockScreenActivity;->a(Lcom/kms/antitheft/gui/LockScreenActivity;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 139
    iget-object v0, p0, Lca;->a:Lcom/kms/antitheft/gui/LockScreenActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/kms/antitheft/gui/LockScreenActivity;->a(Lcom/kms/antitheft/gui/LockScreenActivity;I)I

    .line 142
    :cond_0
    :goto_0
    iget-object v0, p0, Lca;->a:Lcom/kms/antitheft/gui/LockScreenActivity;

    iget-object v1, p0, Lca;->a:Lcom/kms/antitheft/gui/LockScreenActivity;

    invoke-static {v1}, Lcom/kms/antitheft/gui/LockScreenActivity;->a(Lcom/kms/antitheft/gui/LockScreenActivity;)I

    move-result v1

    invoke-static {v0, v1, v2}, LcW;->a(Landroid/app/Activity;IZ)V

    .line 148
    :cond_1
    :goto_1
    return-void

    .line 140
    :cond_2
    iget-object v0, p0, Lca;->a:Lcom/kms/antitheft/gui/LockScreenActivity;

    invoke-static {v0}, Lcom/kms/antitheft/gui/LockScreenActivity;->a(Lcom/kms/antitheft/gui/LockScreenActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lca;->a:Lcom/kms/antitheft/gui/LockScreenActivity;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/kms/antitheft/gui/LockScreenActivity;->a(Lcom/kms/antitheft/gui/LockScreenActivity;I)I

    goto :goto_0

    .line 144
    :cond_3
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 146
    iget-object v0, p0, Lca;->a:Lcom/kms/antitheft/gui/LockScreenActivity;

    iget-object v1, p0, Lca;->a:Lcom/kms/antitheft/gui/LockScreenActivity;

    invoke-static {v1}, Lcom/kms/antitheft/gui/LockScreenActivity;->a(Lcom/kms/antitheft/gui/LockScreenActivity;)I

    move-result v1

    invoke-static {v0, v1, v2}, LcW;->a(Landroid/app/Activity;IZ)V

    goto :goto_1
.end method
