.class public Lname/kunes/android/widget/AccessibleListView;
.super Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lname/kunes/android/widget/AccessibleListView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lname/kunes/android/widget/AccessibleListView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lname/kunes/android/widget/AccessibleListView;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    new-instance v0, Lname/kunes/android/widget/a;

    invoke-direct {v0, p0}, Lname/kunes/android/widget/a;-><init>(Lname/kunes/android/widget/AccessibleListView;)V

    invoke-virtual {p0, v0}, Lname/kunes/android/widget/AccessibleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lname/kunes/android/widget/AccessibleListView;->setItemsCanFocus(Z)V

    return-void
.end method


# virtual methods
.method public final varargs a(Landroid/widget/Adapter;[Landroid/view/View;)V
    .locals 3

    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lname/kunes/android/widget/AccessibleListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_0
    aget-object v2, p2, v0

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lname/kunes/android/widget/AccessibleListView;->addHeaderView(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 2

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lname/kunes/android/widget/AccessibleListView;->a(Landroid/widget/Adapter;[Landroid/view/View;)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    const-string v0, ""

    invoke-virtual {p0, v0}, Lname/kunes/android/widget/AccessibleListView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lname/kunes/android/widget/AccessibleListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lname/kunes/android/widget/AccessibleListView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lname/kunes/android/widget/AccessibleListView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
