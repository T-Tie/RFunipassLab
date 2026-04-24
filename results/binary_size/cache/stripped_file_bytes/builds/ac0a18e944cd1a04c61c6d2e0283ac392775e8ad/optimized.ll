; ModuleID = '<stdin>'
source_filename = "/tmp/tmpp92bf4r1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %input = alloca [101 x i8], align 16
  %word = alloca [100 x [101 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 101, ptr nonnull %input) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %input, i64 noundef 101)
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %input) #7
  %conv = trunc i64 %call2 to i32
  %smax = call i32 @llvm.smax.i32(i32 %conv, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %sumblank.0 = phi i32 [ %spec.select, %for.body ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 10100, ptr nonnull %word) #6
  br label %for.cond7

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [101 x i8], ptr %input, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %cmp4 = icmp eq i8 %0, 32
  %inc = zext i1 %cmp4 to i32
  %spec.select = add nuw nsw i32 %sumblank.0, %inc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !8

for.cond7:                                        ; preds = %for.inc26, %for.cond.cleanup
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.inc26 ], [ 0, %for.cond.cleanup ]
  %i6.0 = phi i32 [ %i6.1, %for.inc26 ], [ 0, %for.cond.cleanup ]
  %k.0 = phi i32 [ %k.1, %for.inc26 ], [ 0, %for.cond.cleanup ]
  %exitcond24.not = icmp eq i64 %indvars.iv20, %wide.trip.count
  br i1 %exitcond24.not, label %for.cond30, label %for.body11

for.body11:                                       ; preds = %for.cond7
  %arrayidx13 = getelementptr inbounds nuw [101 x i8], ptr %input, i64 0, i64 %indvars.iv20
  %1 = load i8, ptr %arrayidx13, align 1, !tbaa !5
  %cmp15 = icmp eq i8 %1, 32
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %for.body11
  %inc17 = add nsw i32 %i6.0, 1
  br label %for.inc26

if.else:                                          ; preds = %for.body11
  %idxprom20 = sext i32 %i6.0 to i64
  %idxprom22 = sext i32 %k.0 to i64
  %arrayidx23 = getelementptr inbounds [100 x [101 x i8]], ptr %word, i64 0, i64 %idxprom20, i64 %idxprom22
  store i8 %1, ptr %arrayidx23, align 1, !tbaa !5
  %inc24 = add nsw i32 %k.0, 1
  br label %for.inc26

for.inc26:                                        ; preds = %if.then16, %if.else
  %i6.1 = phi i32 [ %inc17, %if.then16 ], [ %i6.0, %if.else ]
  %k.1 = phi i32 [ 0, %if.then16 ], [ %inc24, %if.else ]
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond7, !llvm.loop !11

for.cond30:                                       ; preds = %for.cond7, %for.inc47
  %i29.0 = phi i32 [ %dec, %for.inc47 ], [ %sumblank.0, %for.cond7 ]
  %cmp31 = icmp sgt i32 %i29.0, -1
  br i1 %cmp31, label %for.body33, label %for.cond.cleanup32

for.cond.cleanup32:                               ; preds = %for.cond30
  call void @llvm.lifetime.end.p0(i64 10100, ptr nonnull %word) #6
  call void @llvm.lifetime.end.p0(i64 101, ptr nonnull %input) #6
  ret i32 0

for.body33:                                       ; preds = %for.cond30
  %cmp34 = icmp eq i32 %i29.0, %sumblank.0
  br i1 %cmp34, label %for.inc47, label %if.else40

if.else40:                                        ; preds = %for.body33
  %call1.i16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  br label %for.inc47

for.inc47:                                        ; preds = %for.body33, %if.else40
  %idxprom42.pn.in = phi i32 [ %i29.0, %if.else40 ], [ %sumblank.0, %for.body33 ]
  %idxprom42.pn = zext i32 %idxprom42.pn.in to i64
  %arrayidx37.sink25 = getelementptr inbounds nuw [100 x [101 x i8]], ptr %word, i64 0, i64 %idxprom42.pn
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx37.sink25) #6
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx37.sink25, i64 noundef %call.i.i)
  %dec = add nsw i32 %i29.0, -1
  br label %for.cond30, !llvm.loop !12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
