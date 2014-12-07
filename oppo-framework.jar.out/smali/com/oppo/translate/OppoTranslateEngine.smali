.class public abstract Lcom/oppo/translate/OppoTranslateEngine;
.super Ljava/lang/Object;
.source "OppoTranslateEngine.java"

# interfaces
.implements Lcom/oppo/translate/OppoTranslatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/translate/OppoTranslateEngine$1;,
        Lcom/oppo/translate/OppoTranslateEngine$PronounceThread;,
        Lcom/oppo/translate/OppoTranslateEngine$AudioFocusCtrl;,
        Lcom/oppo/translate/OppoTranslateEngine$IAudioCtrl;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LANG_FROM:Ljava/lang/String; = "lang_from"

.field private static final LANG_TO:Ljava/lang/String; = "lang_to"

.field private static final PRONOUNCE_DELAY_FADE:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "OppoTranslateEngine"


# instance fields
.field private mAudioCtrl:Lcom/oppo/translate/OppoTranslateEngine$IAudioCtrl;

.field protected mContext:Landroid/content/Context;

.field protected mDictListener:Lcom/oppo/translate/IOppoTranslateResultListener;

.field private mHandler:Landroid/os/Handler;

.field protected mLangFrom:Ljava/lang/String;

.field protected mLangTo:Ljava/lang/String;

.field protected mLayout:Lcom/oppo/translate/OppoTranslateLayout;

.field private mPronounceThread:Lcom/oppo/translate/OppoTranslateEngine$PronounceThread;

.field protected mTransListener:Lcom/oppo/translate/IOppoTranslateResultListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/oppo/translate/OppoTranslateEngine;->mDictListener:Lcom/oppo/translate/IOppoTranslateResultListener;

    .line 56
    iput-object v1, p0, Lcom/oppo/translate/OppoTranslateEngine;->mTransListener:Lcom/oppo/translate/IOppoTranslateResultListener;

    .line 61
    iput-object v1, p0, Lcom/oppo/translate/OppoTranslateEngine;->mContext:Landroid/content/Context;

    .line 66
    iput-object v1, p0, Lcom/oppo/translate/OppoTranslateEngine;->mLayout:Lcom/oppo/translate/OppoTranslateLayout;

    .line 71
    iput-object v1, p0, Lcom/oppo/translate/OppoTranslateEngine;->mLangFrom:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/oppo/translate/OppoTranslateEngine;->mLangTo:Ljava/lang/String;

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oppo/translate/OppoTranslateEngine;->mHandler:Landroid/os/Handler;

    .line 82
    new-instance v0, Lcom/oppo/translate/OppoTranslateEngine$PronounceThread;

    invoke-direct {v0, p0, v1}, Lcom/oppo/translate/OppoTranslateEngine$PronounceThread;-><init>(Lcom/oppo/translate/OppoTranslateEngine;Lcom/oppo/translate/OppoTranslateEngine$1;)V

    iput-object v0, p0, Lcom/oppo/translate/OppoTranslateEngine;->mPronounceThread:Lcom/oppo/translate/OppoTranslateEngine$PronounceThread;

    .line 83
    iput-object v1, p0, Lcom/oppo/translate/OppoTranslateEngine;->mAudioCtrl:Lcom/oppo/translate/OppoTranslateEngine$IAudioCtrl;

    .line 94
    iput-object p1, p0, Lcom/oppo/translate/OppoTranslateEngine;->mContext:Landroid/content/Context;

    .line 95
    new-instance v0, Lcom/oppo/translate/OppoTranslateLayout;

    invoke-direct {v0, p1}, Lcom/oppo/translate/OppoTranslateLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/translate/OppoTranslateEngine;->mLayout:Lcom/oppo/translate/OppoTranslateLayout;

    .line 96
    new-instance v0, Lcom/oppo/translate/OppoTranslateEngine$AudioFocusCtrl;

    invoke-direct {v0, p0, v1}, Lcom/oppo/translate/OppoTranslateEngine$AudioFocusCtrl;-><init>(Lcom/oppo/translate/OppoTranslateEngine;Lcom/oppo/translate/OppoTranslateEngine$1;)V

    iput-object v0, p0, Lcom/oppo/translate/OppoTranslateEngine;->mAudioCtrl:Lcom/oppo/translate/OppoTranslateEngine$IAudioCtrl;

    .line 97
    return-void
.end method


# virtual methods
.method public dict(Ljava/lang/String;Lcom/oppo/translate/IOppoTranslateResultListener;)V
    .locals 0
    .parameter "content"
    .parameter "listener"

    .prologue
    .line 122
    iput-object p2, p0, Lcom/oppo/translate/OppoTranslateEngine;->mDictListener:Lcom/oppo/translate/IOppoTranslateResultListener;

    .line 123
    return-void
.end method

.method public getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "content"

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 104
    const-string v0, "OppoTranslateEngine"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/oppo/util/OppoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method protected abstract onPronounce(Ljava/lang/String;)V
.end method

.method protected onPronounceBegin()V
    .locals 3

    .prologue
    .line 151
    const/4 v0, 0x1

    const-string v1, "OppoTranslateEngine"

    const-string v2, "onPronounceBegin"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method protected onPronounceEnd()V
    .locals 3

    .prologue
    .line 158
    const/4 v0, 0x1

    const-string v1, "OppoTranslateEngine"

    const-string v2, "onPronounceEnd"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateEngine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateEngine;->mPronounceThread:Lcom/oppo/translate/OppoTranslateEngine$PronounceThread;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 160
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateEngine;->mAudioCtrl:Lcom/oppo/translate/OppoTranslateEngine$IAudioCtrl;

    invoke-interface {v0}, Lcom/oppo/translate/OppoTranslateEngine$IAudioCtrl;->resumeMusic()V

    .line 161
    return-void
.end method

.method protected onRestoreInstanceState(Lcom/oppo/translate/OppoTranslateState;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 177
    if-eqz p1, :cond_0

    .line 178
    const-string v0, "lang_from"

    invoke-virtual {p1, v0}, Lcom/oppo/translate/OppoTranslateState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/translate/OppoTranslateEngine;->mLangFrom:Ljava/lang/String;

    .line 179
    const-string v0, "lang_to"

    invoke-virtual {p1, v0}, Lcom/oppo/translate/OppoTranslateState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/translate/OppoTranslateEngine;->mLangTo:Ljava/lang/String;

    .line 180
    const/4 v0, 0x1

    const-string v1, "OppoTranslateEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRestoreInstanceState : langFrom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/translate/OppoTranslateEngine;->mLangFrom:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", langTo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/translate/OppoTranslateEngine;->mLangTo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : savedInstanceState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Lcom/oppo/translate/OppoTranslateState;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 190
    if-eqz p1, :cond_0

    .line 191
    const/4 v0, 0x1

    const-string v1, "OppoTranslateEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSaveInstanceState : langFrom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/translate/OppoTranslateEngine;->mLangFrom:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", langTo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/translate/OppoTranslateEngine;->mLangTo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : outState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v0, "lang_from"

    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateEngine;->mLangFrom:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/oppo/translate/OppoTranslateState;->putString(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    const-string v0, "lang_to"

    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateEngine;->mLangTo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/oppo/translate/OppoTranslateState;->putString(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    :cond_0
    return-void
.end method

.method public pronounce(Ljava/lang/String;)V
    .locals 5
    .parameter "content"

    .prologue
    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/oppo/translate/OppoTranslateEngine;->onPronounceBegin()V

    .line 129
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateEngine;->mAudioCtrl:Lcom/oppo/translate/OppoTranslateEngine$IAudioCtrl;

    invoke-interface {v1}, Lcom/oppo/translate/OppoTranslateEngine$IAudioCtrl;->pauseMusic()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x3e8

    .line 130
    .local v0, delay:I
    :goto_0
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateEngine;->mPronounceThread:Lcom/oppo/translate/OppoTranslateEngine$PronounceThread;

    invoke-virtual {v1, p1}, Lcom/oppo/translate/OppoTranslateEngine$PronounceThread;->setContent(Ljava/lang/String;)V

    .line 131
    if-nez v0, :cond_2

    .line 132
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateEngine;->mPronounceThread:Lcom/oppo/translate/OppoTranslateEngine$PronounceThread;

    invoke-virtual {v1}, Lcom/oppo/translate/OppoTranslateEngine$PronounceThread;->run()V

    .line 137
    .end local v0           #delay:I
    :cond_0
    :goto_1
    return-void

    .line 129
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 134
    .restart local v0       #delay:I
    :cond_2
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateEngine;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateEngine;->mPronounceThread:Lcom/oppo/translate/OppoTranslateEngine$PronounceThread;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public recycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 109
    const-string v0, "OppoTranslateEngine"

    const-string v1, "recycle"

    invoke-static {v0, v1}, Lcom/oppo/util/OppoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iput-object v2, p0, Lcom/oppo/translate/OppoTranslateEngine;->mDictListener:Lcom/oppo/translate/IOppoTranslateResultListener;

    .line 111
    iput-object v2, p0, Lcom/oppo/translate/OppoTranslateEngine;->mTransListener:Lcom/oppo/translate/IOppoTranslateResultListener;

    .line 112
    invoke-virtual {p0}, Lcom/oppo/translate/OppoTranslateEngine;->onPronounceEnd()V

    .line 113
    return-void
.end method

.method public translate(Ljava/lang/String;Lcom/oppo/translate/IOppoTranslateResultListener;)V
    .locals 0
    .parameter "content"
    .parameter "listener"

    .prologue
    .line 117
    iput-object p2, p0, Lcom/oppo/translate/OppoTranslateEngine;->mTransListener:Lcom/oppo/translate/IOppoTranslateResultListener;

    .line 118
    return-void
.end method
