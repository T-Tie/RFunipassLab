; ModuleID = '<stdin>'
source_filename = "/tmp/tmpbe239ekw.cpp"
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
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %k) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %cn.0 = phi i32 [ 0, %entry ], [ %cn.1, %for.inc12 ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc13, %for.inc12 ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %3
  br i1 %cmp, label %for.body, label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.cond
  %sub = add nsw i32 %cn.0, -1
  %smax17 = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %wide.trip.count18 = zext nneg i32 %smax17 to i64
  br label %for.cond15

for.body:                                         ; preds = %for.cond
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %k)
  %4 = load i32, ptr %k, align 4
  %smax = call i32 @llvm.smax.i32(i32 %cn.0, i32 -1)
  %5 = add i32 %smax, 1
  %wide.trip.count = zext i32 %5 to i64
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.body ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %for.end, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv
  %6 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %6, %4
  br i1 %cmp5, label %for.end.split.loop.exit, label %for.inc

for.inc:                                          ; preds = %for.body4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.end.split.loop.exit:                          ; preds = %for.body4
  %7 = trunc nuw nsw i64 %indvars.iv to i32
  br label %for.end

for.end:                                          ; preds = %for.cond2, %for.end.split.loop.exit
  %j.0.lcssa = phi i32 [ %7, %for.end.split.loop.exit ], [ %5, %for.cond2 ]
  %add = add nsw i32 %cn.0, 1
  %cmp6 = icmp eq i32 %j.0.lcssa, %add
  br i1 %cmp6, label %if.then7, label %for.inc12

if.then7:                                         ; preds = %for.end
  %idxprom8 = sext i32 %cn.0 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %vla, i64 %idxprom8
  store i32 %4, ptr %arrayidx9, align 4, !tbaa !5
  br label %for.inc12

for.inc12:                                        ; preds = %for.end, %if.then7
  %cn.1 = phi i32 [ %j.0.lcssa, %if.then7 ], [ %cn.0, %for.end ]
  %inc13 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.cond15:                                       ; preds = %for.cond15.preheader, %for.body17
  %indvars.iv14 = phi i64 [ 0, %for.cond15.preheader ], [ %indvars.iv.next15, %for.body17 ]
  %exitcond19.not = icmp eq i64 %indvars.iv14, %wide.trip.count18
  br i1 %exitcond19.not, label %for.end24, label %for.body17

for.body17:                                       ; preds = %for.cond15
  %arrayidx19 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv14
  %8 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %call20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %8)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call20, ptr noundef nonnull @.str, i64 noundef 1)
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %for.cond15, !llvm.loop !13

for.end24:                                        ; preds = %for.cond15
  %idxprom26 = sext i32 %sub to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %vla, i64 %idxprom26
  %9 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %call28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %9)
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %k) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!13 = distinct !{!13, !10, !11}
