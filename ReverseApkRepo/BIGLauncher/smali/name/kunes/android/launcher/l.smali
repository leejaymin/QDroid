.class final Lname/kunes/android/launcher/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/p;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/p;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/l;->a:Lname/kunes/android/launcher/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/l;->a:Lname/kunes/android/launcher/p;

    invoke-static {v0}, Lname/kunes/android/launcher/p;->d(Lname/kunes/android/launcher/p;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    invoke-direct {p0}, Lname/kunes/android/launcher/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lname/kunes/android/launcher/l;->a:Lname/kunes/android/launcher/p;

    invoke-static {v0}, Lname/kunes/android/launcher/p;->d(Lname/kunes/android/launcher/p;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lname/kunes/android/launcher/l;->a:Lname/kunes/android/launcher/p;

    invoke-static {v0}, Lname/kunes/android/launcher/p;->c(Lname/kunes/android/launcher/p;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lname/kunes/android/launcher/l;->a:Lname/kunes/android/launcher/p;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v0, p3, v1}, Lname/kunes/android/launcher/p;->a(Lname/kunes/android/launcher/p;II)V

    :cond_1
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Lname/kunes/android/launcher/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lname/kunes/android/launcher/l;->a:Lname/kunes/android/launcher/p;

    invoke-static {v0}, Lname/kunes/android/launcher/p;->d(Lname/kunes/android/launcher/p;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    :cond_0
    iget-object v0, p0, Lname/kunes/android/launcher/l;->a:Lname/kunes/android/launcher/p;

    invoke-static {v0, v1, v1}, Lname/kunes/android/launcher/p;->a(Lname/kunes/android/launcher/p;II)V

    return-void
.end method
