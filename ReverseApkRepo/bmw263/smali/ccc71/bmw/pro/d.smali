.class final Lccc71/bmw/pro/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lccc71/bmw/pro/bmw_settings;


# direct methods
.method constructor <init>(Lccc71/bmw/pro/bmw_settings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/pro/d;->a:Lccc71/bmw/pro/bmw_settings;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 230
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 231
    iget-object v1, p0, Lccc71/bmw/pro/d;->a:Lccc71/bmw/pro/bmw_settings;

    invoke-static {}, Lccc71/bmw/pro/bmw_settings;->c()I

    move-result v2

    invoke-static {v1, v2, v0}, Lccc71/bmw/pro/bmw_settings;->e(Landroid/content/Context;II)V

    .line 232
    const/4 v0, 0x1

    return v0
.end method
