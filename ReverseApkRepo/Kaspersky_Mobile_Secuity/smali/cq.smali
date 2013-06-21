.class public final Lcq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/kms/antitheft/gui/SmsFindSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antitheft/gui/SmsFindSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcq;->a:Lcom/kms/antitheft/gui/SmsFindSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/16 v2, 0x9

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 104
    iget-object v0, p0, Lcq;->a:Lcom/kms/antitheft/gui/SmsFindSettingsActivity;

    invoke-virtual {v0}, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 107
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, LfZ;->a(ILjava/lang/Object;)V

    .line 108
    const/16 v1, 0xb

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LfZ;->a(ILjava/lang/Object;)V

    .line 109
    invoke-virtual {v0}, LfZ;->a()V

    .line 110
    iget-object v0, p0, Lcq;->a:Lcom/kms/antitheft/gui/SmsFindSettingsActivity;

    invoke-static {v0, v4}, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->a(Lcom/kms/antitheft/gui/SmsFindSettingsActivity;I)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 152
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcq;->a:Lcom/kms/antitheft/gui/SmsFindSettingsActivity;

    invoke-static {v0}, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->a(Lcom/kms/antitheft/gui/SmsFindSettingsActivity;)LbL;

    move-result-object v0

    invoke-virtual {v0}, LbL;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lcq;->a:Lcom/kms/antitheft/gui/SmsFindSettingsActivity;

    iput-boolean v3, v0, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->a:Z

    .line 116
    new-instance v0, Les;

    iget-object v1, p0, Lcq;->a:Lcom/kms/antitheft/gui/SmsFindSettingsActivity;

    invoke-direct {v0, v1}, Les;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Les;->a(I)Les;

    move-result-object v0

    const v1, 0x7f080112

    invoke-virtual {v0, v1}, Les;->b(I)Les;

    move-result-object v0

    const v1, 0x7f080114

    new-instance v2, Lcs;

    invoke-direct {v2, p0}, Lcs;-><init>(Lcq;)V

    invoke-virtual {v0, v1, v2}, Les;->a(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    const v1, 0x7f080115

    new-instance v2, Lcr;

    invoke-direct {v2, p0}, Lcr;-><init>(Lcq;)V

    invoke-virtual {v0, v1, v2}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 145
    :cond_1
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 147
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, LfZ;->a(ILjava/lang/Object;)V

    .line 148
    invoke-virtual {v0}, LfZ;->a()V

    .line 149
    iget-object v0, p0, Lcq;->a:Lcom/kms/antitheft/gui/SmsFindSettingsActivity;

    invoke-static {v0, v4}, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->b(Lcom/kms/antitheft/gui/SmsFindSettingsActivity;I)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
