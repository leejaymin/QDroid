.class public final Lcom/thinkyeah/common/b/g;
.super Landroid/support/v4/app/q;

# interfaces
.implements Landroid/support/v4/view/as;
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field final synthetic b:Lcom/thinkyeah/common/b/d;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/widget/TabHost;

.field private final e:Landroid/support/v4/view/ViewPager;

.field private final f:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/thinkyeah/common/b/d;Landroid/support/v4/app/g;Landroid/widget/TabHost;Landroid/support/v4/view/ViewPager;)V
    .locals 1

    iput-object p1, p0, Lcom/thinkyeah/common/b/g;->b:Lcom/thinkyeah/common/b/d;

    invoke-virtual {p2}, Landroid/support/v4/app/g;->f()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/app/q;-><init>(Landroid/support/v4/app/k;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/thinkyeah/common/b/g;->f:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/thinkyeah/common/b/g;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/thinkyeah/common/b/g;->d:Landroid/widget/TabHost;

    iput-object p4, p0, Lcom/thinkyeah/common/b/g;->e:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/thinkyeah/common/b/g;->d:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    iget-object v0, p0, Lcom/thinkyeah/common/b/g;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/v;)V

    iget-object v0, p0, Lcom/thinkyeah/common/b/g;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/as;)V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/common/b/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/common/b/i;

    iget-object v1, p0, Lcom/thinkyeah/common/b/g;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/thinkyeah/common/b/i;->a:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/thinkyeah/common/b/i;->b:Landroid/os/Bundle;

    invoke-static {v1, v2, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;)V
    .locals 2

    new-instance v0, Lcom/thinkyeah/common/b/h;

    iget-object v1, p0, Lcom/thinkyeah/common/b/g;->c:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/thinkyeah/common/b/h;-><init>(Lcom/thinkyeah/common/b/g;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    new-instance v0, Lcom/thinkyeah/common/b/i;

    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/thinkyeah/common/b/i;-><init>(Lcom/thinkyeah/common/b/g;Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/thinkyeah/common/b/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/thinkyeah/common/b/g;->d:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v0, p0, Landroid/support/v4/view/v;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/common/b/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final b(I)V
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/common/b/g;->d:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    iget-object v2, p0, Lcom/thinkyeah/common/b/g;->d:Landroid/widget/TabHost;

    invoke-virtual {v2, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    return-void
.end method

.method public final onTabChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/common/b/g;->b:Lcom/thinkyeah/common/b/d;

    invoke-static {v0}, Lcom/thinkyeah/common/b/d;->a(Lcom/thinkyeah/common/b/d;)V

    return-void
.end method
