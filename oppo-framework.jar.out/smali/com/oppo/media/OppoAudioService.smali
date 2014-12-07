.class public Lcom/oppo/media/OppoAudioService;
.super Landroid/media/AudioService;
.source "OppoAudioService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoAudioService"

.field public static final VOLUMEUNIFORM:Ljava/lang/String; = "oppo_uniform_volume_settings_enabled"


# instance fields
.field private mOppoContentResolver:Landroid/content/ContentResolver;

.field private mOppoStreamVolumeAlias:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->mOppoContentResolver:Landroid/content/ContentResolver;

    .line 41
    :try_start_0
    const-string v4, "android.media.AudioService"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 46
    .local v0, cls:Ljava/lang/Class;
    const-string v4, "mStreamVolumeAlias"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 47
    .local v3, streamVolumeAlias:Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 48
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    check-cast v4, [I

    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 63
    .end local v0           #cls:Ljava/lang/Class;
    .end local v3           #streamVolumeAlias:Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v2

    .line 51
    .local v2, e1:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 52
    .end local v2           #e1:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 54
    .local v1, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 55
    .end local v1           #e:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v1

    .line 57
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 58
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 60
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private isStreamAffectedByUniform(I)Z
    .locals 2
    .parameter "streamType"

    .prologue
    const/4 v0, 0x1

    .line 67
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public adjustStreamVolume(IIILjava/lang/String;)V
    .locals 10
    .parameter "streamType"
    .parameter "direction"
    .parameter "flags"
    .parameter "callingPackage"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 92
    iget-object v4, p0, Lcom/oppo/media/OppoAudioService;->mOppoContentResolver:Landroid/content/ContentResolver;

    const-string v5, "oppo_uniform_volume_settings_enabled"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 93
    .local v0, VolumeUniform:I
    move v3, p3

    .line 96
    .local v3, streamflags:I
    if-ne v0, v8, :cond_6

    invoke-direct {p0, p1}, Lcom/oppo/media/OppoAudioService;->isStreamAffectedByUniform(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 97
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 98
    iget-object v4, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I

    aget v4, v4, v1

    if-ne v4, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/oppo/media/OppoAudioService;->isStreamAffectedByUniform(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    iget-object v4, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I

    aget v4, v4, v1

    iget-object v5, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I

    aget v5, v5, p1

    if-ne v4, v5, :cond_2

    .line 100
    move v3, p3

    .line 106
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/media/OppoAudioService;->getRingerMode()I

    move-result v4

    if-ne v4, v8, :cond_0

    .line 107
    and-int/lit8 v3, v3, -0x11

    .line 109
    :cond_0
    invoke-super {p0, v1, p2, v3, p4}, Landroid/media/AudioService;->adjustStreamVolume(IIILjava/lang/String;)V

    .line 97
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_2
    and-int/lit8 v3, v3, -0x2

    .line 103
    and-int/lit8 v3, v3, -0x5

    goto :goto_1

    .line 113
    :cond_3
    invoke-super {p0, v7}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v2

    .line 114
    .local v2, ringVolume:I
    const/4 v1, 0x1

    :goto_2
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 115
    invoke-direct {p0, p1}, Lcom/oppo/media/OppoAudioService;->isStreamAffectedByUniform(I)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-super {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v4

    if-ne v4, v7, :cond_5

    .line 116
    invoke-super {p0, v1}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v4

    if-eq v2, v4, :cond_5

    .line 117
    invoke-virtual {p0, v7, v2, v6, p4}, Lcom/oppo/media/OppoAudioService;->setStreamVolume(IIILjava/lang/String;)V

    .line 130
    .end local v1           #i:I
    .end local v2           #ringVolume:I
    :cond_4
    :goto_3
    const-string v4, "OppoAudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "end adjustStreamVolume() stream="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", dir="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", flags = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " VolumeUniform: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void

    .line 114
    .restart local v1       #i:I
    .restart local v2       #ringVolume:I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 124
    .end local v1           #i:I
    .end local v2           #ringVolume:I
    :cond_6
    invoke-virtual {p0, v9}, Lcom/oppo/media/OppoAudioService;->isStreamMute(I)Z

    move-result v4

    if-eqz v4, :cond_7

    if-lez p2, :cond_7

    .line 125
    const/4 v4, 0x0

    invoke-virtual {p0, v9, v6, v4}, Lcom/oppo/media/OppoAudioService;->setStreamMute(IZLandroid/os/IBinder;)V

    .line 127
    :cond_7
    invoke-super {p0, p1, p2, p3, p4}, Landroid/media/AudioService;->adjustStreamVolume(IIILjava/lang/String;)V

    goto :goto_3
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .locals 5
    .parameter "streamType"

    .prologue
    const/4 v1, 0x1

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, VolumeUniform:I
    iget-object v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoContentResolver:Landroid/content/ContentResolver;

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoContentResolver:Landroid/content/ContentResolver;

    const-string v3, "oppo_uniform_volume_settings_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 138
    :cond_0
    const-string v2, "OppoAudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isStreamAffectedByRingerMode streamType= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "VolumeUniform = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    if-ne v0, v1, :cond_2

    .line 140
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 146
    :goto_0
    return v1

    .line 143
    :cond_1
    invoke-super {p0, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v1

    goto :goto_0

    .line 146
    :cond_2
    invoke-super {p0, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v1

    goto :goto_0
.end method

.method public setStreamVolume(IIILjava/lang/String;)V
    .locals 6
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"
    .parameter "callingPackage"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 72
    iget-object v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoContentResolver:Landroid/content/ContentResolver;

    const-string v3, "oppo_uniform_volume_settings_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 73
    .local v0, VolumeUniform:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-direct {p0, p1}, Lcom/oppo/media/OppoAudioService;->isStreamAffectedByUniform(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 75
    iget-object v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I

    aget v2, v2, v1

    if-ne v2, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/oppo/media/OppoAudioService;->isStreamAffectedByUniform(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I

    aget v3, v3, p1

    if-ne v2, v3, :cond_1

    move v2, p3

    :goto_1
    invoke-super {p0, v1, p2, v2, p4}, Landroid/media/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    .line 74
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    :cond_1
    and-int/lit8 v2, p3, -0x2

    and-int/lit8 v2, v2, -0x5

    goto :goto_1

    .line 80
    .end local v1           #i:I
    :cond_2
    invoke-virtual {p0, v5}, Lcom/oppo/media/OppoAudioService;->isStreamMute(I)Z

    move-result v2

    if-eqz v2, :cond_3

    if-lez p2, :cond_3

    .line 81
    const/4 v2, 0x0

    invoke-virtual {p0, v5, v4, v2}, Lcom/oppo/media/OppoAudioService;->setStreamMute(IZLandroid/os/IBinder;)V

    .line 83
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/media/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    .line 85
    :cond_4
    const-string v2, "OppoAudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end setStreamVolume() stream="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", flags = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " VolumeUniform: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method
