.class public final LbW;
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
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LbW;-><init>(Lcom/kms/antitheft/gui/LockScreenActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/antitheft/gui/LockScreenActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, LbW;->a:Lcom/kms/antitheft/gui/LockScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 156
    iget-object v0, p0, LbW;->a:Lcom/kms/antitheft/gui/LockScreenActivity;

    iget-object v1, p0, LbW;->a:Lcom/kms/antitheft/gui/LockScreenActivity;

    invoke-static {v1}, Lfp;->a(Landroid/app/Activity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/kms/antitheft/gui/LockScreenActivity;->b(Lcom/kms/antitheft/gui/LockScreenActivity;I)V

    .line 157
    iget-object v0, p0, LbW;->a:Lcom/kms/antitheft/gui/LockScreenActivity;

    invoke-static {v0}, LcW;->a(Landroid/app/Activity;)V

    .line 158
    iget-object v0, p0, LbW;->a:Lcom/kms/antitheft/gui/LockScreenActivity;

    invoke-static {v0, v3, v2}, LcW;->a(Landroid/app/Activity;IZ)V

    .line 159
    iget-object v0, p0, LbW;->a:Lcom/kms/antitheft/gui/LockScreenActivity;

    iget-object v1, p0, LbW;->a:Lcom/kms/antitheft/gui/LockScreenActivity;

    invoke-static {v0, v1}, LcW;->a(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, LbW;->a:Lcom/kms/antitheft/gui/LockScreenActivity;

    const v1, 0x7f0b0060

    invoke-virtual {v0, v1}, Lcom/kms/antitheft/gui/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 161
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 162
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelected(Z)V

    .line 163
    new-instance v1, LbX;

    invoke-direct {v1, p0}, LbX;-><init>(LbW;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 173
    new-instance v1, LbY;

    invoke-direct {v1, p0}, LbY;-><init>(LbW;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 185
    iget-object v0, p0, LbW;->a:Lcom/kms/antitheft/gui/LockScreenActivity;

    invoke-static {v0, v3}, Lcom/kms/antitheft/gui/LockScreenActivity;->a(Lcom/kms/antitheft/gui/LockScreenActivity;I)I

    .line 186
    return-void
.end method
