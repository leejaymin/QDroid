.class public Lcom/thinkyeah/smartlock/cp;
.super Lcom/thinkyeah/common/b/a;


# static fields
.field private static final d:Lcom/thinkyeah/common/c;


# instance fields
.field private W:Ljava/util/ArrayList;

.field private e:Lcom/thinkyeah/smartlock/k;

.field private f:Lcom/thinkyeah/smartlock/cw;

.field private g:Ljava/util/List;

.field private h:Lcom/thinkyeah/smartlock/ap;

.field private i:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/thinkyeah/common/c;

    const-class v1, Lcom/thinkyeah/smartlock/cp;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thinkyeah/common/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thinkyeah/smartlock/cp;->d:Lcom/thinkyeah/common/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/thinkyeah/common/b/a;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/cp;->i:Landroid/os/Handler;

    return-void
.end method

.method public static F()Lcom/thinkyeah/common/b/f;
    .locals 1

    new-instance v0, Lcom/thinkyeah/smartlock/cq;

    invoke-direct {v0}, Lcom/thinkyeah/smartlock/cq;-><init>()V

    return-object v0
.end method

.method private I()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/thinkyeah/smartlock/cu;

    invoke-direct {v1, p0}, Lcom/thinkyeah/smartlock/cu;-><init>(Lcom/thinkyeah/smartlock/cp;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/cp;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/cp;I)V
    .locals 4

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/l;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/l;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    iput-object v3, p0, Lcom/thinkyeah/smartlock/cp;->W:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->W:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->W:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1}, Lcom/thinkyeah/smartlock/da;->a(Ljava/util/ArrayList;)Lcom/thinkyeah/smartlock/da;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/l;

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/k;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/l;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/l;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/thinkyeah/smartlock/cp;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/l;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/l;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/l;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/thinkyeah/smartlock/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/thinkyeah/smartlock/cy;->F()Lcom/thinkyeah/smartlock/cy;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/l;

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/k;Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic b(Lcom/thinkyeah/smartlock/cp;)Lcom/thinkyeah/smartlock/cw;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->f:Lcom/thinkyeah/smartlock/cw;

    return-object v0
.end method

.method static synthetic c(Lcom/thinkyeah/smartlock/cp;)Lcom/thinkyeah/smartlock/k;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->e:Lcom/thinkyeah/smartlock/k;

    return-object v0
.end method


# virtual methods
.method public final G()V
    .locals 5

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->W:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->W:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->W:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->f:Lcom/thinkyeah/smartlock/cw;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/cw;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->h:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->e()V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/thinkyeah/smartlock/cp;->e:Lcom/thinkyeah/smartlock/k;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/l;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/l;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/l;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/l;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/thinkyeah/smartlock/k;->b(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final H()V
    .locals 4

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->W:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/thinkyeah/smartlock/cp;->e:Lcom/thinkyeah/smartlock/k;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/l;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/l;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/l;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/l;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/thinkyeah/smartlock/k;->b(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/cp;->I()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->f:Lcom/thinkyeah/smartlock/cw;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/cw;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->h:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->e()V

    return-void
.end method

.method protected final a()I
    .locals 1

    const v0, 0x7f03001c

    return v0
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 7

    const/4 v0, -0x1

    const/4 v6, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/thinkyeah/common/b/a;->a(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "IntentSelectedApp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->e:Lcom/thinkyeah/smartlock/k;

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/k;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/thinkyeah/smartlock/cp;->d:Lcom/thinkyeah/common/c;

    const-string v1, "AppHost add locked app failed"

    invoke-virtual {v0, v1}, Lcom/thinkyeah/common/c;->c(Ljava/lang/String;)V

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->h:Lcom/thinkyeah/smartlock/ap;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v1, "FirstTimeAddApp"

    invoke-static {v0, v1, v6}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->h:Lcom/thinkyeah/smartlock/ap;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v1, "FirstTimeAddApp"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/thinkyeah/smartlock/ai;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->h:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    const v1, 0x7f090013

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    const-class v2, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x1c

    invoke-virtual {p0, v0, v1}, Lcom/thinkyeah/smartlock/cp;->a(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lcom/thinkyeah/smartlock/cp;->d:Lcom/thinkyeah/common/c;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "add locked app: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/thinkyeah/common/c;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/thinkyeah/smartlock/cp;->I()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->e:Lcom/thinkyeah/smartlock/k;

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/k;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/thinkyeah/smartlock/cp;->g:Ljava/util/List;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/thinkyeah/smartlock/cp;->g:Ljava/util/List;

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->f:Lcom/thinkyeah/smartlock/cw;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/cw;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->h:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->e()V

    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_2

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/l;

    iget-object v2, p0, Lcom/thinkyeah/smartlock/cp;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_1
    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->h:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->b()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->h:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->h:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->i:Landroid/os/Handler;

    new-instance v1, Lcom/thinkyeah/smartlock/cv;

    invoke-direct {v1, p0}, Lcom/thinkyeah/smartlock/cv;-><init>(Lcom/thinkyeah/smartlock/cp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    const v1, 0x7f090014

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f09000b

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f020054

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/thinkyeah/common/b/a;->c(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    invoke-virtual {v0}, Landroid/support/v4/app/g;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ap;->a(Landroid/content/Context;)Lcom/thinkyeah/smartlock/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/cp;->h:Lcom/thinkyeah/smartlock/ap;

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    invoke-virtual {v0}, Landroid/support/v4/app/g;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/k;->a(Landroid/content/Context;)Lcom/thinkyeah/smartlock/k;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/cp;->e:Lcom/thinkyeah/smartlock/k;

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    const v1, 0x7f0b0047

    invoke-virtual {v0, v1}, Landroid/support/v4/app/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    const v2, 0x7f0b0048

    invoke-virtual {v1, v2}, Landroid/support/v4/app/g;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    new-instance v1, Lcom/thinkyeah/smartlock/cw;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/thinkyeah/smartlock/cw;-><init>(Lcom/thinkyeah/smartlock/cp;B)V

    iput-object v1, p0, Lcom/thinkyeah/smartlock/cp;->f:Lcom/thinkyeah/smartlock/cw;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/cp;->f:Lcom/thinkyeah/smartlock/cw;

    new-instance v2, Lcom/thinkyeah/smartlock/cr;

    invoke-direct {v2, p0}, Lcom/thinkyeah/smartlock/cr;-><init>(Lcom/thinkyeah/smartlock/cp;)V

    invoke-virtual {v1, v2}, Lcom/thinkyeah/smartlock/cw;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v1, p0, Lcom/thinkyeah/smartlock/cp;->f:Lcom/thinkyeah/smartlock/cw;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/thinkyeah/smartlock/cs;

    invoke-direct {v1, p0}, Lcom/thinkyeah/smartlock/cs;-><init>(Lcom/thinkyeah/smartlock/cp;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    new-instance v1, Lcom/thinkyeah/smartlock/ct;

    invoke-direct {v1, p0}, Lcom/thinkyeah/smartlock/ct;-><init>(Lcom/thinkyeah/smartlock/cp;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->e:Lcom/thinkyeah/smartlock/k;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/k;->c()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->e:Lcom/thinkyeah/smartlock/k;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/k;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/cp;->g:Ljava/util/List;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cp;->f:Lcom/thinkyeah/smartlock/cw;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/cw;->notifyDataSetChanged()V

    if-eqz p1, :cond_0

    const-string v0, "bundleSelectedPosotions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/cp;->W:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method protected final d()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/bk;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/thinkyeah/smartlock/bl;->F()Lcom/thinkyeah/smartlock/bl;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/l;

    const-string v2, "notLicensedDialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/k;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    const-class v2, Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x1b

    invoke-virtual {p0, v0, v1}, Lcom/thinkyeah/smartlock/cp;->a(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/thinkyeah/common/b/a;->d(Landroid/os/Bundle;)V

    const-string v0, "bundleSelectedPosotions"

    iget-object v1, p0, Lcom/thinkyeah/smartlock/cp;->W:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
