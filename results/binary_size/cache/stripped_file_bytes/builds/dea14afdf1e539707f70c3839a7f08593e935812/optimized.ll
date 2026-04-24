; ModuleID = '<stdin>'
source_filename = "/tmp/tmpzilmiuzz.cpp"
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
@__const.main.a = private unnamed_addr constant [13 x i32] [i32 0, i32 3, i32 0, i32 3, i32 2, i32 3, i32 2, i32 3, i32 3, i32 2, i32 3, i32 2, i32 3], align 16
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %N = alloca i32, align 4
  %Y = alloca i32, align 4
  %M1 = alloca i32, align 4
  %M2 = alloca i32, align 4
  %a = alloca [13 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %N)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %Y) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %M1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %M2) #6
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i64 8
  br label %for.cond

for.cond:                                         ; preds = %if.end34, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc36, %if.end34 ]
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %M2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %M1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %Y) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #6
  ret i32 0

for.body:                                         ; preds = %for.cond
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %Y)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call1, ptr noundef nonnull align 4 dereferenceable(4) %M1)
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call2, ptr noundef nonnull align 4 dereferenceable(4) %M2)
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %a) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(52) %a, ptr noundef nonnull align 16 dereferenceable(52) @__const.main.a, i64 52, i1 false)
  %1 = load i32, ptr %Y, align 4, !tbaa !5
  %rem = srem i32 %1, 400
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %rem5 = srem i32 %1, 100
  %cmp6.not = icmp ne i32 %rem5, 0
  %2 = and i32 %1, 3
  %cmp8 = icmp eq i32 %2, 0
  %or.cond = and i1 %cmp6.not, %cmp8
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i32 1, ptr %arrayidx, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %3 = load i32, ptr %M1, align 4, !tbaa !5
  %4 = load i32, ptr %M2, align 4, !tbaa !5
  %5 = sext i32 %3 to i64
  %smax = call i32 @llvm.smax.i32(i32 %3, i32 %4)
  %wide.trip.count = sext i32 %smax to i64
  br label %for.cond10

for.cond10:                                       ; preds = %for.body13, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body13 ], [ %5, %if.end ]
  %S.0 = phi i32 [ %add, %for.body13 ], [ 0, %if.end ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond17.preheader, label %for.body13

for.cond17.preheader:                             ; preds = %for.cond10
  %6 = sext i32 %4 to i64
  br label %for.cond17

for.body13:                                       ; preds = %for.cond10
  %arrayidx14 = getelementptr inbounds [13 x i32], ptr %a, i64 0, i64 %indvars.iv
  %7 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %add = add nsw i32 %7, %S.0
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %for.cond10, !llvm.loop !9

for.cond17:                                       ; preds = %for.cond17.preheader, %for.body20
  %indvars.iv21 = phi i64 [ %6, %for.cond17.preheader ], [ %indvars.iv.next22, %for.body20 ]
  %S.1 = phi i32 [ %S.0, %for.cond17.preheader ], [ %add23, %for.body20 ]
  %exitcond25.not = icmp eq i64 %indvars.iv21, %wide.trip.count
  br i1 %exitcond25.not, label %for.cond.cleanup19, label %for.body20

for.cond.cleanup19:                               ; preds = %for.cond17
  %rem27 = srem i32 %S.1, 7
  %cmp28 = icmp eq i32 %rem27, 0
  br i1 %cmp28, label %if.then29, label %if.else

for.body20:                                       ; preds = %for.cond17
  %arrayidx22 = getelementptr inbounds [13 x i32], ptr %a, i64 0, i64 %indvars.iv21
  %8 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %add23 = add nsw i32 %8, %S.1
  %indvars.iv.next22 = add nsw i64 %indvars.iv21, 1
  br label %for.cond17, !llvm.loop !12

if.then29:                                        ; preds = %for.cond.cleanup19
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 3)
  br label %if.end34

if.else:                                          ; preds = %for.cond.cleanup19
  %call1.i9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 2)
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then29
  %vtable.i14 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i15 = getelementptr i8, ptr %vtable.i14, i64 -24
  %vbase.offset.i16 = load i64, ptr %vbase.offset.ptr.i15, align 8
  %add.ptr.i17 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i16
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i17, i8 noundef signext 10)
  %call1.i18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i)
  %call.i.i19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i18)
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %a) #6
  %inc36 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !8, i64 0}
!15 = distinct !{!15, !10, !11}
