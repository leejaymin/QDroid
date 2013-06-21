.class public Lcom/rookiestudio/perfectviewer/THardwareKeyList;
.super Landroid/widget/BaseAdapter;
.source "THardwareKeyList.java"


# static fields
.field private static final NOOK_PAGE_DOWN_KEY_LEFT:I = 0x5f

.field private static final NOOK_PAGE_DOWN_KEY_RIGHT:I = 0x61

.field private static final NOOK_PAGE_DOWN_SWIPE:I = 0x64

.field private static final NOOK_PAGE_UP_KEY_LEFT:I = 0x60

.field private static final NOOK_PAGE_UP_KEY_RIGHT:I = 0x62

.field private static final NOOK_PAGE_UP_SWIPE:I = 0x65


# instance fields
.field private KeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rookiestudio/baseclass/THardwareKey;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->KeyList:Ljava/util/ArrayList;

    .line 28
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->context:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public AddDefaultKey()V
    .locals 8

    .prologue
    const/16 v7, 0x1a

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/16 v4, 0x19

    const/4 v3, 0x0

    .line 37
    const/4 v0, 0x4

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v2, 0x7f0a00de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v1}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->AddKey(IILjava/lang/String;)Lcom/rookiestudio/baseclass/THardwareKey;

    .line 38
    const/16 v0, 0x54

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v2, 0x7f0a00df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v1}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->AddKey(IILjava/lang/String;)Lcom/rookiestudio/baseclass/THardwareKey;

    .line 39
    const/16 v0, 0x18

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v2, 0x7f0a0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->AddKey(IILjava/lang/String;)Lcom/rookiestudio/baseclass/THardwareKey;

    .line 40
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v1, 0x7f0a0057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v6, v0}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->AddKey(IILjava/lang/String;)Lcom/rookiestudio/baseclass/THardwareKey;

    .line 41
    const/16 v0, 0x13

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v2, 0x7f0a014f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v4, v1}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->AddKey(IILjava/lang/String;)Lcom/rookiestudio/baseclass/THardwareKey;

    .line 42
    const/16 v0, 0x14

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v2, 0x7f0a0150

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v7, v1}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->AddKey(IILjava/lang/String;)Lcom/rookiestudio/baseclass/THardwareKey;

    .line 43
    const/16 v0, 0x15

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v2, 0x7f0a0151

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->AddKey(IILjava/lang/String;)Lcom/rookiestudio/baseclass/THardwareKey;

    .line 44
    const/16 v0, 0x16

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v2, 0x7f0a0152

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v6, v1}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->AddKey(IILjava/lang/String;)Lcom/rookiestudio/baseclass/THardwareKey;

    .line 45
    const/16 v0, 0x62

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v2, 0x7f0a0153

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->AddKey(IILjava/lang/String;)Lcom/rookiestudio/baseclass/THardwareKey;

    .line 46
    const/16 v0, 0x61

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v2, 0x7f0a0154

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v6, v1}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->AddKey(IILjava/lang/String;)Lcom/rookiestudio/baseclass/THardwareKey;

    .line 47
    const/16 v0, 0x60

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v2, 0x7f0a0155

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v4, v1}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->AddKey(IILjava/lang/String;)Lcom/rookiestudio/baseclass/THardwareKey;

    .line 48
    const/16 v0, 0x5f

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v2, 0x7f0a0156

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v7, v1}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->AddKey(IILjava/lang/String;)Lcom/rookiestudio/baseclass/THardwareKey;

    .line 49
    const/16 v0, 0x60

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v2, 0x7f0a0155

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v4, v1}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->AddKey(IILjava/lang/String;)Lcom/rookiestudio/baseclass/THardwareKey;

    .line 50
    const/16 v0, 0x65

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v2, 0x7f0a0157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v1}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->AddKey(IILjava/lang/String;)Lcom/rookiestudio/baseclass/THardwareKey;

    .line 51
    const/16 v0, 0x64

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v2, 0x7f0a0158

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v1}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->AddKey(IILjava/lang/String;)Lcom/rookiestudio/baseclass/THardwareKey;

    .line 52
    return-void
.end method

.method public AddKey(IILjava/lang/String;)Lcom/rookiestudio/baseclass/THardwareKey;
    .locals 2
    .parameter "KeyCode"
    .parameter "Action"
    .parameter "Description"

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->FindKeyCode(I)Lcom/rookiestudio/baseclass/THardwareKey;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    .line 86
    :cond_0
    new-instance v0, Lcom/rookiestudio/baseclass/THardwareKey;

    invoke-direct {v0}, Lcom/rookiestudio/baseclass/THardwareKey;-><init>()V

    .line 87
    .local v0, aHardwareKey:Lcom/rookiestudio/baseclass/THardwareKey;
    iput p1, v0, Lcom/rookiestudio/baseclass/THardwareKey;->KeyCode:I

    .line 88
    iput p2, v0, Lcom/rookiestudio/baseclass/THardwareKey;->Action:I

    .line 89
    iput-object p3, v0, Lcom/rookiestudio/baseclass/THardwareKey;->Description:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->KeyList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public Assign(Lcom/rookiestudio/perfectviewer/THardwareKeyList;)V
    .locals 5
    .parameter "source"

    .prologue
    .line 152
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->KeyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 154
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 158
    return-void

    .line 155
    :cond_0
    invoke-virtual {p1, v1}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->getItem(I)Lcom/rookiestudio/baseclass/THardwareKey;

    move-result-object v0

    .line 156
    .local v0, aKey:Lcom/rookiestudio/baseclass/THardwareKey;
    iget v2, v0, Lcom/rookiestudio/baseclass/THardwareKey;->KeyCode:I

    iget v3, v0, Lcom/rookiestudio/baseclass/THardwareKey;->Action:I

    iget-object v4, v0, Lcom/rookiestudio/baseclass/THardwareKey;->Description:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->AddKey(IILjava/lang/String;)Lcom/rookiestudio/baseclass/THardwareKey;

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public Clear()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->KeyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 34
    return-void
.end method

.method public Delete(I)V
    .locals 1
    .parameter "Index"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->KeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public FindKeyCode(I)Lcom/rookiestudio/baseclass/THardwareKey;
    .locals 3
    .parameter "KeyCode"

    .prologue
    .line 96
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->KeyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 96
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/baseclass/THardwareKey;

    .line 97
    .local v0, aKey:Lcom/rookiestudio/baseclass/THardwareKey;
    iget v2, v0, Lcom/rookiestudio/baseclass/THardwareKey;->KeyCode:I

    if-ne v2, p1, :cond_0

    goto :goto_0
.end method

.method public LoadSetting(Landroid/content/SharedPreferences;)V
    .locals 8
    .parameter "settings"

    .prologue
    const/4 v7, -0x1

    .line 67
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->Clear()V

    .line 68
    const/4 v3, 0x0

    .line 70
    .local v3, i:I
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "KeyCode"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 71
    .local v1, KeyCode:I
    if-ne v1, v7, :cond_0

    .line 79
    return-void

    .line 74
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "KeyAction"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 75
    .local v0, KeyAction:I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "KeyText"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v6, 0x7f0a0049

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, KeyText:Ljava/lang/String;
    invoke-virtual {p0, v1, v0, v2}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->AddKey(IILjava/lang/String;)Lcom/rookiestudio/baseclass/THardwareKey;

    .line 77
    add-int/lit8 v3, v3, 0x1

    .line 69
    goto :goto_0
.end method

.method public Remove(I)V
    .locals 3
    .parameter "KeyCode"

    .prologue
    .line 106
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->KeyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 112
    return-void

    .line 107
    :cond_0
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->KeyList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/baseclass/THardwareKey;

    .line 108
    .local v0, aKey:Lcom/rookiestudio/baseclass/THardwareKey;
    iget v2, v0, Lcom/rookiestudio/baseclass/THardwareKey;->KeyCode:I

    if-ne v2, p1, :cond_1

    .line 109
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->KeyList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 106
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public SaveSetting(Landroid/content/SharedPreferences;)V
    .locals 6
    .parameter "Preferences"

    .prologue
    .line 55
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 56
    .local v2, settings:Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .line 57
    .local v1, i:I
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->KeyList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 63
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    return-void

    .line 57
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/baseclass/THardwareKey;

    .line 58
    .local v0, aKey:Lcom/rookiestudio/baseclass/THardwareKey;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "KeyCode"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Lcom/rookiestudio/baseclass/THardwareKey;->KeyCode:I

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "KeyAction"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Lcom/rookiestudio/baseclass/THardwareKey;->Action:I

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "KeyText"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/rookiestudio/baseclass/THardwareKey;->Description:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->KeyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/rookiestudio/baseclass/THardwareKey;
    .locals 1
    .parameter "position"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->KeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/baseclass/THardwareKey;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->getItem(I)Lcom/rookiestudio/baseclass/THardwareKey;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->KeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/baseclass/THardwareKey;

    iget v0, v0, Lcom/rookiestudio/baseclass/THardwareKey;->KeyCode:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 136
    if-nez p2, :cond_0

    .line 137
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->context:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 138
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030019

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 140
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->KeyList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rookiestudio/baseclass/THardwareKey;

    .line 141
    .local v3, aKey:Lcom/rookiestudio/baseclass/THardwareKey;
    const v5, 0x7f0c0050

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 142
    .local v2, KeyCodeText:Landroid/widget/TextView;
    iget v5, v3, Lcom/rookiestudio/baseclass/THardwareKey;->KeyCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    const v5, 0x7f0c0051

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 144
    .local v1, DescriptionText:Landroid/widget/TextView;
    iget-object v5, v3, Lcom/rookiestudio/baseclass/THardwareKey;->Description:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    const v5, 0x7f0c0052

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 146
    .local v0, ActionText:Landroid/widget/TextView;
    sget-object v5, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    iget v6, v3, Lcom/rookiestudio/baseclass/THardwareKey;->Action:I

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    return-object p2
.end method
