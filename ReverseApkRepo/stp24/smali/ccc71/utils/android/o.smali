.class public abstract Lccc71/utils/android/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lccc71/utils/android/o;


# instance fields
.field protected a:Landroid/app/ActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lccc71/utils/android/o;->b:Lccc71/utils/android/o;

    .line 6
    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityManager;)V
    .locals 1
    .parameter

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/utils/android/o;->a:Landroid/app/ActivityManager;

    .line 11
    iput-object p1, p0, Lccc71/utils/android/o;->a:Landroid/app/ActivityManager;

    .line 12
    return-void
.end method

.method public static a(Landroid/app/ActivityManager;)Lccc71/utils/android/o;
    .locals 1
    .parameter

    .prologue
    .line 20
    sget-object v0, Lccc71/utils/android/o;->b:Lccc71/utils/android/o;

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lccc71/utils/android/o;->b:Lccc71/utils/android/o;

    .line 32
    :goto_0
    return-object v0

    .line 23
    :cond_0
    const/16 v0, 0x8

    invoke-static {v0}, Lccc71/utils/ac;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    new-instance v0, Lccc71/utils/android/p;

    invoke-direct {v0, p0}, Lccc71/utils/android/p;-><init>(Landroid/app/ActivityManager;)V

    sput-object v0, Lccc71/utils/android/o;->b:Lccc71/utils/android/o;

    .line 32
    :goto_1
    sget-object v0, Lccc71/utils/android/o;->b:Lccc71/utils/android/o;

    goto :goto_0

    .line 29
    :cond_1
    new-instance v0, Lccc71/utils/android/q;

    invoke-direct {v0, p0}, Lccc71/utils/android/q;-><init>(Landroid/app/ActivityManager;)V

    sput-object v0, Lccc71/utils/android/o;->b:Lccc71/utils/android/o;

    goto :goto_1
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Z
.end method
