.class public Lng/vace/android/highwayracing/SelectCar;
.super Landroid/app/Activity;
.source "SelectCar.java"


# instance fields
.field health:Landroid/widget/ImageView;

.field private ok:Landroid/widget/Button;

.field final paint:Landroid/graphics/Paint;

.field speed:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/SelectCar;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method private setupCarSelector(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "selectedCar"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 48
    .local v2, selectedCar:I
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "unlockLevel"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 50
    .local v3, unlockLevel:I
    const/high16 v4, 0x7f07

    invoke-virtual {p0, v4}, Lng/vace/android/highwayracing/SelectCar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Gallery;

    .line 51
    .local v1, carGallery:Landroid/widget/Gallery;
    new-instance v0, Lng/vace/android/highwayracing/ImageAdapter;

    invoke-direct {v0, p0, v3}, Lng/vace/android/highwayracing/ImageAdapter;-><init>(Landroid/content/Context;I)V

    .line 52
    .local v0, adapterBackground:Lng/vace/android/highwayracing/ImageAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 53
    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setSelection(I)V

    .line 55
    new-instance v4, Lng/vace/android/highwayracing/SelectCar$1;

    invoke-direct {v4, p0}, Lng/vace/android/highwayracing/SelectCar$1;-><init>(Lng/vace/android/highwayracing/SelectCar;)V

    invoke-virtual {v1, v4}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 95
    iget-object v4, p0, Lng/vace/android/highwayracing/SelectCar;->ok:Landroid/widget/Button;

    new-instance v5, Lng/vace/android/highwayracing/SelectCar$2;

    invoke-direct {v5, p0, p1, v1}, Lng/vace/android/highwayracing/SelectCar$2;-><init>(Lng/vace/android/highwayracing/SelectCar;Landroid/content/Intent;Landroid/widget/Gallery;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstance"

    .prologue
    const/16 v3, 0x400

    const/4 v2, 0x1

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0, v2}, Lng/vace/android/highwayracing/SelectCar;->requestWindowFeature(I)Z

    .line 30
    invoke-virtual {p0}, Lng/vace/android/highwayracing/SelectCar;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 31
    invoke-virtual {p0, v2}, Lng/vace/android/highwayracing/SelectCar;->setRequestedOrientation(I)V

    .line 33
    iget-object v1, p0, Lng/vace/android/highwayracing/SelectCar;->paint:Landroid/graphics/Paint;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    invoke-virtual {p0}, Lng/vace/android/highwayracing/SelectCar;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 37
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lng/vace/android/highwayracing/SelectCar;->setContentView(I)V

    .line 39
    const v1, 0x7f070003

    invoke-virtual {p0, v1}, Lng/vace/android/highwayracing/SelectCar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lng/vace/android/highwayracing/SelectCar;->ok:Landroid/widget/Button;

    .line 40
    const v1, 0x7f070001

    invoke-virtual {p0, v1}, Lng/vace/android/highwayracing/SelectCar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lng/vace/android/highwayracing/SelectCar;->health:Landroid/widget/ImageView;

    .line 41
    const v1, 0x7f070002

    invoke-virtual {p0, v1}, Lng/vace/android/highwayracing/SelectCar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lng/vace/android/highwayracing/SelectCar;->speed:Landroid/widget/ImageView;

    .line 43
    invoke-direct {p0, v0}, Lng/vace/android/highwayracing/SelectCar;->setupCarSelector(Landroid/content/Intent;)V

    .line 44
    return-void
.end method
