.class public Lccc71/pmw/lib/pmw_activity;
.super Lccc71/utils/ccc71_shortcuts;
.source "SourceFile"


# static fields
.field public static g:Z

.field public static h:I


# instance fields
.field private a:Landroid/view/ViewGroup;

.field protected i:Landroid/view/Menu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    sput-boolean v0, Lccc71/pmw/lib/pmw_activity;->g:Z

    .line 16
    sput v0, Lccc71/pmw/lib/pmw_activity;->h:I

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Lccc71/utils/ccc71_shortcuts;-><init>()V

    .line 20
    iput-object v0, p0, Lccc71/pmw/lib/pmw_activity;->i:Landroid/view/Menu;

    .line 225
    iput-object v0, p0, Lccc71/pmw/lib/pmw_activity;->a:Landroid/view/ViewGroup;

    .line 13
    return-void
.end method

.method private a(Landroid/view/Menu;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lccc71/pmw/lib/pmw_activity;->i:Landroid/view/Menu;

    if-nez v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->a()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_4

    .line 152
    :cond_2
    sget v0, Lccc71/pmw/lib/d;->eF:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_3

    .line 154
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 155
    :cond_3
    sget v0, Lccc71/pmw/lib/d;->fs:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 161
    :cond_4
    sget v0, Lccc71/pmw/lib/d;->eF:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_5

    .line 163
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 164
    :cond_5
    sget v0, Lccc71/pmw/lib/d;->fs:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    .line 166
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 181
    if-eqz p1, :cond_0

    .line 185
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 187
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 188
    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 198
    :goto_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    const-class v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_2
    check-cast p1, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 200
    :cond_0
    :goto_3
    return-void

    .line 190
    :cond_1
    :try_start_3
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 191
    invoke-direct {p0, v4}, Lccc71/pmw/lib/pmw_activity;->a(Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    .line 194
    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lccc71/pmw/lib/c;->v:I

    return v0
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lccc71/pmw/lib/g;->bv:I

    return v0
.end method

.method protected final c()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 76
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 77
    sget v1, Lccc71/pmw/lib/f;->b:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 79
    iput-object p1, p0, Lccc71/pmw/lib/pmw_activity;->i:Landroid/view/Menu;

    .line 81
    if-eqz p1, :cond_0

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccc71/pmw/lib/pmw_activity;->a(Landroid/view/Menu;Z)V

    .line 84
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lccc71/utils/ccc71_shortcuts;->onDestroy()V

    .line 67
    iget-object v0, p0, Lccc71/pmw/lib/pmw_activity;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_activity;->a(Landroid/view/View;)V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_activity;->a:Landroid/view/ViewGroup;

    .line 70
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 71
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v0, 0x1

    .line 89
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 91
    sget v2, Lccc71/pmw/lib/d;->eF:I

    if-ne v1, v2, :cond_1

    .line 93
    invoke-static {p0}, Lccc71/pmw/lib/pmw_recorder_service;->a(Landroid/content/Context;)V

    .line 95
    iget-object v1, p0, Lccc71/pmw/lib/pmw_activity;->i:Landroid/view/Menu;

    invoke-direct {p0, v1, v0}, Lccc71/pmw/lib/pmw_activity;->a(Landroid/view/Menu;Z)V

    .line 96
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->af(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    sget v1, Lccc71/pmw/lib/d;->fM:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    sget v2, Lccc71/pmw/lib/d;->fs:I

    if-ne v1, v2, :cond_2

    .line 106
    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->d()V

    .line 107
    invoke-static {p0}, Lccc71/pmw/lib/pmw_recorder_service;->b(Landroid/content/Context;)V

    .line 109
    iget-object v1, p0, Lccc71/pmw/lib/pmw_activity;->i:Landroid/view/Menu;

    invoke-direct {p0, v1, v3}, Lccc71/pmw/lib/pmw_activity;->a(Landroid/view/Menu;Z)V

    .line 111
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->af(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    sget v1, Lccc71/pmw/lib/d;->fM:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_0

    .line 115
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 119
    :cond_2
    sget v2, Lccc71/pmw/lib/d;->fd:I

    if-ne v1, v2, :cond_3

    .line 121
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lccc71/pmw/lib/pmw_settings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    const-string v2, "ccc71.pmw.current_widget_id"

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "ccc71.pmw.current_widget_id"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 126
    :cond_3
    sget v2, Lccc71/pmw/lib/d;->fx:I

    if-ne v1, v2, :cond_4

    .line 128
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lccc71/pmw/lib/pmw_main_popup;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    const/high16 v2, 0x6000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 130
    const-string v2, "ccc71.pmw.current_widget_id"

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "ccc71.pmw.current_widget_id"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    const-string v2, "ccc71.pmw.popup"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    const-string v2, "ccc71.pmw.autoclose"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_activity;->startActivity(Landroid/content/Intent;)V

    .line 135
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/pmw_settings;->l(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_activity;->finish()V

    goto :goto_0

    .line 142
    :cond_4
    invoke-super {p0, p1}, Lccc71/utils/ccc71_shortcuts;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 43
    sget v0, Lccc71/pmw/lib/pmw_activity;->h:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lccc71/pmw/lib/pmw_activity;->h:I

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lccc71/pmw/lib/pmw_activity;->g:Z

    .line 46
    :cond_0
    invoke-super {p0}, Lccc71/utils/ccc71_shortcuts;->onPause()V

    .line 47
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 52
    sget v0, Lccc71/pmw/lib/pmw_activity;->h:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lccc71/pmw/lib/pmw_activity;->h:I

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x1

    sput-boolean v0, Lccc71/pmw/lib/pmw_activity;->g:Z

    .line 55
    :cond_0
    invoke-super {p0}, Lccc71/utils/ccc71_shortcuts;->onResume()V

    .line 57
    iget-object v0, p0, Lccc71/pmw/lib/pmw_activity;->i:Landroid/view/Menu;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lccc71/pmw/lib/pmw_activity;->a(Landroid/view/Menu;Z)V

    .line 58
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .parameter

    .prologue
    .line 173
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 175
    iput-object v0, p0, Lccc71/pmw/lib/pmw_activity;->a:Landroid/view/ViewGroup;

    .line 176
    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_activity;->setContentView(Landroid/view/View;)V

    .line 177
    return-void
.end method
