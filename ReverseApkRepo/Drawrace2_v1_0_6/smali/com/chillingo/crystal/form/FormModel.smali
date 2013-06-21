.class public Lcom/chillingo/crystal/form/FormModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FORM_ID_TYPE_IMAGE_SUBMIT_CAMERA:Ljava/lang/String; = "imagesubmitcamera"

.field public static final FORM_ID_TYPE_IMAGE_SUBMIT_LIBRARY:Ljava/lang/String; = "imagesubmitlibrary"

.field public static final FORM_ID_TYPE_SUBMIT:Ljava/lang/String; = "submit"

.field public static final FORM_ID_TYPE_SUBMIT_CONTACTS:Ljava/lang/String; = "submitcontacts"

.field public static final FORM_ID_TYPE_SUBMIT_CONTACTS_EXTENDEDV2_DETAILS:Ljava/lang/String; = "submitcontactsextv2"

.field public static final FORM_ID_TYPE_SUBMIT_CONTACTS_EXTENDED_DETAILS:Ljava/lang/String; = "submitcontactsext"

.field public static final FORM_ID_TYPE_SUBMIT_CONTACTS_NUMBERS:Ljava/lang/String; = "submitcontactsnumbers"

.field public static final FORM_ID_TYPE_SUBMIT_URL_ENCODED:Ljava/lang/String; = "submiturlencoded"

.field public static final FORM_KEYS_DEFAULT_MODEL_DATA:Ljava/lang/String; = "formdefault"

.field public static final FORM_KEYS_FORM_SUBMIT:Ljava/lang/String; = "formsubmit"

.field public static final FORM_KEYS_FORM_SUBMIT_URL_ENCODED:Ljava/lang/String; = "formsubmiturlencoded"

.field public static final FORM_KEYS_IMAGE_SUBMIT_CAMERA:Ljava/lang/String; = "imagesubmitcamera"

.field public static final FORM_KEYS_IMAGE_SUBMIT_LIBRARY:Ljava/lang/String; = "imagesubmitlibrary"

.field public static final FORM_KEYS_NO_STACK_PUSH:Ljava/lang/String; = "nostackpush"

.field public static final FORM_KEYS_SOURCE_URL:Ljava/lang/String; = "sourceurl"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _formUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/form/FormModel;->_formUrl:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/form/FormModel;->_data:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/form/FormModel;->_formUrl:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/form/FormModel;->_data:Ljava/util/Map;

    iput-object p1, p0, Lcom/chillingo/crystal/form/FormModel;->_formUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/form/FormModel;->_data:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public allKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/chillingo/crystal/form/FormModel;->_data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public data()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/form/FormModel;->_data:Ljava/util/Map;

    return-object v0
.end method

.method public dataForKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/form/FormModel;->_data:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/chillingo/crystal/utils/DictionaryUtils;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public formUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/form/FormModel;->_formUrl:Ljava/lang/String;

    return-object v0
.end method

.method public putDataForKey(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/form/FormModel;->_data:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
