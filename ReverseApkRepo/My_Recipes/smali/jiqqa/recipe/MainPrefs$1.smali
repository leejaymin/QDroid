.class Ljiqqa/recipe/MainPrefs$1;
.super Ljava/lang/Object;
.source "MainPrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljiqqa/recipe/MainPrefs;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljiqqa/recipe/MainPrefs;


# direct methods
.method constructor <init>(Ljiqqa/recipe/MainPrefs;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ljiqqa/recipe/MainPrefs$1;->this$0:Ljiqqa/recipe/MainPrefs;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const-string v4, "prefBG"

    .line 32
    iget-object v2, p0, Ljiqqa/recipe/MainPrefs$1;->this$0:Ljiqqa/recipe/MainPrefs;

    .line 33
    const-string v3, "prefBG"

    const/4 v3, 0x0

    .line 32
    invoke-virtual {v2, v4, v3}, Ljiqqa/recipe/MainPrefs;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 35
    .local v0, bgpref:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 36
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "prefBG"

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-interface {v1, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 37
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    const/4 v2, 0x1

    return v2
.end method
