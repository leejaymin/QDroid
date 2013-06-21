.class Lcom/viewpagerindicator/sample/c;
.super Landroid/support/v4/app/FragmentPagerAdapter;


# static fields
.field protected static final b:[Ljava/lang/String;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "This"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Is"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Test"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viewpagerindicator/sample/c;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    sget-object v0, Lcom/viewpagerindicator/sample/c;->b:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/viewpagerindicator/sample/c;->a:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/viewpagerindicator/sample/c;->a:I

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2

    sget-object v0, Lcom/viewpagerindicator/sample/c;->b:[Ljava/lang/String;

    sget-object v1, Lcom/viewpagerindicator/sample/c;->b:[Ljava/lang/String;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/viewpagerindicator/sample/TestFragment;->newInstance(Ljava/lang/String;)Lcom/viewpagerindicator/sample/TestFragment;

    move-result-object v0

    return-object v0
.end method
