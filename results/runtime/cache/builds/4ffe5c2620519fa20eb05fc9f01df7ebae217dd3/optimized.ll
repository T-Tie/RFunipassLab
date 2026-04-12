; ModuleID = '<stdin>'
source_filename = "/tmp/tmpagbkx9zv.cpp"
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

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z6devideiii(i32 noundef %m, i32 noundef %x, i32 noundef %i) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne i32 %x, 1
  %cmp1.not = icmp slt i32 %m, %i
  %or.cond = or i1 %cmp, %cmp1.not
  br i1 %or.cond, label %if.else, label %return

if.else:                                          ; preds = %entry
  %cmp2 = icmp sgt i32 %x, 1
  br i1 %cmp2, label %while.cond.preheader, label %return

while.cond.preheader:                             ; preds = %if.else
  %sub = add nsw i32 %x, -1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %if.end
  %j.0 = phi i32 [ %inc, %if.end ], [ %i, %while.cond.preheader ]
  %sum.0 = phi i32 [ %sum.1, %if.end ], [ 0, %while.cond.preheader ]
  %cmp4.not = icmp sgt i32 %j.0, %m
  br i1 %cmp4.not, label %return, label %while.body

while.body:                                       ; preds = %while.cond
  %cmp5.not = icmp eq i32 %j.0, 1
  br i1 %cmp5.not, label %if.end, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %while.body
  %rem = srem i32 %m, %j.0
  %div = sdiv i32 %m, %j.0
  %cmp7 = icmp eq i32 %rem, 0
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %land.lhs.true6
  %call = tail call noundef i32 @_Z6devideiii(i32 noundef %div, i32 noundef %sub, i32 noundef %j.0)
  %add = add nsw i32 %call, %sum.0
  br label %if.end

if.end:                                           ; preds = %if.then8, %land.lhs.true6, %while.body
  %sum.1 = phi i32 [ %add, %if.then8 ], [ %sum.0, %land.lhs.true6 ], [ %sum.0, %while.body ]
  %inc = add nsw i32 %j.0, 1
  br label %while.cond, !llvm.loop !5

return:                                           ; preds = %while.cond, %if.else, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.else ], [ %sum.0, %while.cond ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.cond.cleanup ]
  %0 = load i32, ptr %n, align 4, !tbaa !8
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %a)
  %1 = load i32, ptr %a, align 4, !tbaa !8
  br label %for.cond2

for.cond2:                                        ; preds = %for.body4, %for.body
  %sum.0 = phi i32 [ 0, %for.body ], [ %add, %for.body4 ]
  %X.0 = phi i32 [ 1, %for.body ], [ %inc, %for.body4 ]
  %exitcond.not = icmp eq i32 %X.0, 17
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body4

for.cond.cleanup:                                 ; preds = %for.cond2
  %call6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %vtable.i = load ptr, ptr %call6, align 8, !tbaa !12
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call6, i64 %vbase.offset.i
  %call.i5 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call6, i8 noundef signext %call.i5)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc9 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !14

for.body4:                                        ; preds = %for.cond2
  %call5 = call noundef i32 @_Z6devideiii(i32 noundef %1, i32 noundef %X.0, i32 noundef 1)
  %add = add nsw i32 %call5, %sum.0
  %inc = add nuw nsw i32 %X.0, 1
  br label %for.cond2, !llvm.loop !15

for.end10:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"vtable pointer", !11, i64 0}
!14 = distinct !{!14, !6, !7}
!15 = distinct !{!15, !6, !7}
