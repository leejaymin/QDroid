.class public Lccc71/utils/android/x;
.super Lccc71/utils/android/w;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lccc71/utils/android/w;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 15
    return-void
.end method

.method public final a(Ljava/io/File;)Z
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-virtual {p1}, Ljava/io/File;->canExecute()Z

    move-result v0

    return v0
.end method
