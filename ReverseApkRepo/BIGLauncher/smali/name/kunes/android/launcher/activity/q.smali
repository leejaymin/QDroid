.class public final Lname/kunes/android/launcher/activity/q;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:[Ljava/lang/Integer;

.field private synthetic c:Lname/kunes/android/launcher/activity/IconPickerActivity;


# direct methods
.method public constructor <init>(Lname/kunes/android/launcher/activity/IconPickerActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lname/kunes/android/launcher/activity/q;->c:Lname/kunes/android/launcher/activity/IconPickerActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p1}, Lname/kunes/android/launcher/activity/IconPickerActivity;->a(Landroid/app/Activity;)[Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/launcher/activity/q;->b:[Ljava/lang/Integer;

    iput-object p2, p0, Lname/kunes/android/launcher/activity/q;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/q;->b:[Ljava/lang/Integer;

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x5

    if-nez p2, :cond_1

    new-instance p2, Landroid/widget/ImageView;

    iget-object v0, p0, Lname/kunes/android/launcher/activity/q;->a:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lname/kunes/android/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    :goto_0
    iget-object v1, p0, Lname/kunes/android/launcher/activity/q;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lname/kunes/android/a/a;->a(ILandroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    :goto_1
    iget-object v0, p0, Lname/kunes/android/launcher/activity/q;->b:[Ljava/lang/Integer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2

    :cond_0
    const/16 v0, 0x18

    goto :goto_0

    :cond_1
    check-cast p2, Landroid/widget/ImageView;

    goto :goto_1
.end method
