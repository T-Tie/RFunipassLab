; ModuleID = '<stdin>'
source_filename = "/tmp/tmpeelvfx2q.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@num = dso_local local_unnamed_addr global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z4fjysiiiiPi(i32 noundef %n, i32 noundef %m, i32 noundef %i, i32 noundef %d, ptr nofree noundef captures(none) %ji) local_unnamed_addr #0 {
entry:
  %idxprom = sext i32 %d to i64
  %arrayidx = getelementptr inbounds i32, ptr %ji, i64 %idxprom
  %add = add nsw i32 %d, 1
  %smax = call i32 @llvm.smax.i32(i32 noundef %d, i32 noundef -1)
  %0 = add i32 %smax, 1
  %smax13 = call i32 @llvm.smax.i32(i32 noundef %i, i32 noundef %m)
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %a.0 = phi i32 [ %i, %entry ], [ %inc13, %for.inc12 ]
  %exitcond14.not = icmp eq i32 %a.0, %smax13
  br i1 %exitcond14.not, label %for.end14.loopexit, label %for.body

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %n, %a.0
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %for.inc12

if.then:                                          ; preds = %for.body
  store i32 %a.0, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %if.then
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.then ]
  %chenji.0 = phi i32 [ %mul, %for.inc ], [ 1, %if.then ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw i32, ptr %ji, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !9
  %mul = mul nsw i32 %1, %chenji.0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !10

for.end:                                          ; preds = %for.cond2
  %cmp7 = icmp eq i32 %chenji.0, %m
  br i1 %cmp7, label %cleanup, label %cleanup.cont

cleanup:                                          ; preds = %for.end
  %2 = load i32, ptr @num, align 4, !tbaa !5
  %inc9 = add nsw i32 %2, 1
  store i32 %inc9, ptr @num, align 4, !tbaa !5
  br label %for.end14

cleanup.cont:                                     ; preds = %for.end
  %div = sdiv i32 %n, %a.0
  %call = tail call noundef i32 @_Z4fjysiiiiPi(i32 noundef %div, i32 noundef %m, i32 noundef %a.0, i32 noundef %add, ptr nofree noundef nonnull captures(none) %ji) #8
  br label %for.inc12

for.inc12:                                        ; preds = %for.body, %cleanup.cont
  %inc13 = add i32 %a.0, 1
  br label %for.cond, !llvm.loop !13

for.end14.loopexit:                               ; preds = %for.cond
  %.pre = load i32, ptr @num, align 4, !tbaa !5
  br label %for.end14

for.end14:                                        ; preds = %for.end14.loopexit, %cleanup
  %3 = phi i32 [ %.pre, %for.end14.loopexit ], [ %inc9, %cleanup ]
  ret i32 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %ji = alloca [20 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %m) #9
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #9
  call void @llvm.lifetime.start.p0(i64 noundef 80, ptr noundef nonnull align 16 dereferenceable(80) %ji) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(80) %ji, i8 noundef 0, i64 noundef 80, i1 noundef false) #10
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %m)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %j.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %m, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %j.0, %0
  br i1 %cmp.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  store i32 0, ptr @num, align 4, !tbaa !5
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %call2 = call noundef i32 @_Z4fjysiiiiPi(i32 noundef %1, i32 noundef %1, i32 noundef 2, i32 noundef 0, ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(80) %ji) #11
  %add = add nsw i32 %call2, 1
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %add)
  %call4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call3, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc = add nuw nsw i32 %j.0, 1
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 80, ptr noundef nonnull align 16 dereferenceable(80) %ji) #11
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #11
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m) #11
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nosync nounwind }
attributes #9 = { nofree nounwind willreturn }
attributes #10 = { nofree willreturn }
attributes #11 = { nounwind }

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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
