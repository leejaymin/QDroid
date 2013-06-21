.class final Lname/kunes/android/b/b;
.super Ljava/lang/Object;


# instance fields
.field final a:Landroid/widget/TextView;

.field final b:Landroid/graphics/drawable/Drawable;


# direct methods
.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lname/kunes/android/b/b;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;B)V

    return-void
.end method

.method private constructor <init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lname/kunes/android/b/b;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lname/kunes/android/b/b;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method
