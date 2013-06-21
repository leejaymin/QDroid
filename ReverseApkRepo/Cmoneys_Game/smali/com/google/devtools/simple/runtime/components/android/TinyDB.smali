.class public Lcom/google/devtools/simple/runtime/components/android/TinyDB;
.super Ljava/lang/Object;
.source "TinyDB.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/Component;
.implements Lcom/google/devtools/simple/runtime/components/android/Deleteable;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->BASIC:Lcom/google/devtools/simple/common/ComponentCategory;
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# instance fields
.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 3
    .parameter "container"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    .line 37
    .local v0, context:Landroid/content/Context;
    const-string v1, "TinyDB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/TinyDB;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 38
    return-void
.end method


# virtual methods
.method public GetValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter "tag"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    const-string v4, ""

    .line 69
    :try_start_0
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/TinyDB;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, ""

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, value:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    move-object v2, v4

    :goto_0
    return-object v2

    :cond_0
    invoke-static {v1}, Lcom/google/devtools/simple/runtime/components/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 72
    .end local v1           #value:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 73
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Lcom/google/devtools/simple/runtime/errors/YailRuntimeError;

    const-string v3, "Value failed to convert from JSON."

    const-string v4, "JSON Creation Error."

    invoke-direct {v2, v3, v4}, Lcom/google/devtools/simple/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public StoreValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .parameter "tag"
    .parameter "valueToStore"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 50
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/TinyDB;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 52
    .local v1, sharedPrefsEditor:Landroid/content/SharedPreferences$Editor;
    :try_start_0
    invoke-static {p2}, Lcom/google/devtools/simple/runtime/components/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return-void

    .line 54
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 55
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Lcom/google/devtools/simple/runtime/errors/YailRuntimeError;

    const-string v3, "Value failed to convert to JSON."

    const-string v4, "JSON Creation Error."

    invoke-direct {v2, v3, v4}, Lcom/google/devtools/simple/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 79
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/TinyDB;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 80
    .local v0, sharedPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 81
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    return-void
.end method
