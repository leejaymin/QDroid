.class public final Ldj;
.super Ldk;
.source "SourceFile"


# instance fields
.field private k:Ljava/lang/Class;

.field private l:Ljava/util/ArrayList;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/view/View$OnClickListener;

.field private o:Landroid/view/View$OnLongClickListener;

.field private synthetic p:Lcom/kms/gui/KMSCommonSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/kms/gui/KMSCommonSettingsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Ldj;->p:Lcom/kms/gui/KMSCommonSettingsActivity;

    .line 105
    const/4 v2, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldj;->l:Ljava/util/ArrayList;

    .line 106
    iput-object p4, p0, Ldj;->k:Ljava/lang/Class;

    .line 107
    iget-object v0, p0, Ldj;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 108
    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 144
    iget-object v0, p0, Ldj;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldh;

    .line 145
    iget-object v1, p0, Ldj;->p:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v1}, Lcom/kms/gui/KMSCommonSettingsActivity;->a(Lcom/kms/gui/KMSCommonSettingsActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f030046

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 146
    iget-object v3, p0, Ldj;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 147
    iget-object v1, p0, Ldj;->p:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v1}, Lcom/kms/gui/KMSCommonSettingsActivity;->a(Lcom/kms/gui/KMSCommonSettingsActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f03001a

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 148
    const v1, 0x7f0b0075

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 149
    iget-object v4, v0, Ldh;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const v1, 0x7f0b0076

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 151
    iget-object v4, v0, Ldh;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, v0, Ldh;->a:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Ldj;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Ldj;->o:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 155
    iget-object v0, p0, Ldj;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Ldj;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ldj;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Ldj;->n:Landroid/view/View$OnClickListener;

    .line 119
    return-void
.end method

.method public final a(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Ldj;->o:Landroid/view/View$OnLongClickListener;

    .line 123
    return-void
.end method

.method public final a(Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Ldj;->m:Landroid/widget/LinearLayout;

    .line 131
    invoke-direct {p0}, Ldj;->c()V

    .line 132
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Ldj;->m:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Ldj;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 137
    iget-object v0, p0, Ldj;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    iget-object v0, p0, Ldj;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 139
    invoke-direct {p0}, Ldj;->c()V

    .line 141
    :cond_0
    return-void
.end method

.method final b()V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Ldj;->p:Lcom/kms/gui/KMSCommonSettingsActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Ldj;->p:Lcom/kms/gui/KMSCommonSettingsActivity;

    iget-object v3, p0, Ldj;->k:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/kms/gui/KMSCommonSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 127
    return-void
.end method
