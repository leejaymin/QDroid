.class public final Landroid/support/v4/app/y;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/support/v4/app/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/app/ac;

    invoke-direct {v0}, Landroid/support/v4/app/ac;-><init>()V

    sput-object v0, Landroid/support/v4/app/y;->a:Landroid/support/v4/app/aa;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/app/ab;

    invoke-direct {v0}, Landroid/support/v4/app/ab;-><init>()V

    sput-object v0, Landroid/support/v4/app/y;->a:Landroid/support/v4/app/aa;

    goto :goto_0
.end method

.method public static synthetic a()Landroid/support/v4/app/aa;
    .locals 1

    sget-object v0, Landroid/support/v4/app/y;->a:Landroid/support/v4/app/aa;

    return-object v0
.end method
