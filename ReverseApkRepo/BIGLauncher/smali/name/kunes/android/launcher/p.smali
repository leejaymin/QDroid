.class public final Lname/kunes/android/launcher/p;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/widget/ListView;

.field private final b:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lname/kunes/android/launcher/p;->c:I

    iput v0, p0, Lname/kunes/android/launcher/p;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lname/kunes/android/launcher/p;->e:I

    iput-object v1, p0, Lname/kunes/android/launcher/p;->a:Landroid/widget/ListView;

    iput-object v1, p0, Lname/kunes/android/launcher/p;->b:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method private constructor <init>(Landroid/widget/ListView;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lname/kunes/android/launcher/p;->c:I

    iput v0, p0, Lname/kunes/android/launcher/p;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lname/kunes/android/launcher/p;->e:I

    iput-object p1, p0, Lname/kunes/android/launcher/p;->a:Landroid/widget/ListView;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lname/kunes/android/launcher/p;->b:Landroid/widget/AdapterView$OnItemSelectedListener;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/launcher/p;->b:Landroid/widget/AdapterView$OnItemSelectedListener;

    goto :goto_0
.end method

.method private a(II)V
    .locals 0

    iput p1, p0, Lname/kunes/android/launcher/p;->d:I

    iput p2, p0, Lname/kunes/android/launcher/p;->e:I

    return-void
.end method

.method static synthetic a(Lname/kunes/android/launcher/p;)V
    .locals 3

    const/4 v2, -0x1

    iget v0, p0, Lname/kunes/android/launcher/p;->c:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lname/kunes/android/launcher/p;->a:Landroid/widget/ListView;

    iget v1, p0, Lname/kunes/android/launcher/p;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    iget v0, p0, Lname/kunes/android/launcher/p;->d:I

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lname/kunes/android/launcher/p;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    iget-object v0, p0, Lname/kunes/android/launcher/p;->a:Landroid/widget/ListView;

    iget v1, p0, Lname/kunes/android/launcher/p;->d:I

    iget v2, p0, Lname/kunes/android/launcher/p;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lname/kunes/android/launcher/p;I)V
    .locals 0

    iput p1, p0, Lname/kunes/android/launcher/p;->c:I

    return-void
.end method

.method static synthetic a(Lname/kunes/android/launcher/p;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lname/kunes/android/launcher/p;->a(II)V

    return-void
.end method

.method static synthetic b(Lname/kunes/android/launcher/p;)V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/p;->a:Landroid/widget/ListView;

    new-instance v1, Lname/kunes/android/launcher/j;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/j;-><init>(Lname/kunes/android/launcher/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lname/kunes/android/launcher/p;->a:Landroid/widget/ListView;

    new-instance v1, Lname/kunes/android/launcher/i;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/i;-><init>(Lname/kunes/android/launcher/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lname/kunes/android/launcher/p;->a:Landroid/widget/ListView;

    new-instance v1, Lname/kunes/android/launcher/l;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/l;-><init>(Lname/kunes/android/launcher/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method static synthetic c(Lname/kunes/android/launcher/p;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/p;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lname/kunes/android/launcher/p;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/p;->b:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/widget/ListView;)Lname/kunes/android/launcher/p;
    .locals 2

    new-instance v0, Lname/kunes/android/launcher/p;

    invoke-direct {v0, p1}, Lname/kunes/android/launcher/p;-><init>(Landroid/widget/ListView;)V

    iget v1, p0, Lname/kunes/android/launcher/p;->c:I

    iput v1, v0, Lname/kunes/android/launcher/p;->c:I

    iget v1, p0, Lname/kunes/android/launcher/p;->d:I

    iput v1, v0, Lname/kunes/android/launcher/p;->d:I

    iget v1, p0, Lname/kunes/android/launcher/p;->e:I

    iput v1, v0, Lname/kunes/android/launcher/p;->e:I

    return-object v0
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/p;->a:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lname/kunes/android/launcher/p;->a:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lname/kunes/android/launcher/p;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lname/kunes/android/launcher/p;->b:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lname/kunes/android/launcher/p;->a:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lname/kunes/android/launcher/p;->a:Landroid/widget/ListView;

    new-instance v1, Lname/kunes/android/launcher/k;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/k;-><init>(Lname/kunes/android/launcher/p;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lname/kunes/android/launcher/p;->a(II)V

    return-void
.end method
