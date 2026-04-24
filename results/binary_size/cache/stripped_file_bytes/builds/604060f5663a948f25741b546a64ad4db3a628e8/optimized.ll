; ModuleID = '<stdin>'
source_filename = "/tmp/tmpj1mv1cwn.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@_ZSt3cin = external global %"class.std::basic_istream", align 8

; Function Attrs: mustprogress uwtable
define dso_local void @_Z3delPc(ptr noundef %str) local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %p.0 = phi ptr [ %str, %entry ], [ %incdec.ptr17, %for.inc16 ]
  %0 = load i8, ptr %p.0, align 1, !tbaa !5
  switch i8 %0, label %for.inc16 [
    i8 0, label %for.end18
    i8 32, label %land.lhs.true
  ]

land.lhs.true:                                    ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %p.0, i64 1
  %1 = load i8, ptr %add.ptr, align 1, !tbaa !5, !invariant.load !8
  %cmp4 = icmp eq i8 %1, 32
  br i1 %cmp4, label %for.cond6, label %for.inc16

for.cond6:                                        ; preds = %land.lhs.true, %for.inc
  %count.0 = phi i32 [ %inc, %for.inc ], [ 0, %land.lhs.true ]
  %q.0 = phi ptr [ %add.ptr7, %for.inc ], [ %add.ptr, %land.lhs.true ]
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %q.0, i64 1
  %2 = load i8, ptr %add.ptr7, align 1, !tbaa !5, !invariant.load !8
  %cmp9.not = icmp eq i8 %2, 0
  br i1 %cmp9.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond6
  store i8 %2, ptr %q.0, align 1, !tbaa !5
  store i8 32, ptr %add.ptr7, align 1, !tbaa !5
  %inc = add nuw nsw i32 %count.0, 1
  br label %for.cond6, !llvm.loop !9

for.end:                                          ; preds = %for.cond6
  %idx.ext = zext nneg i32 %count.0 to i64
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %add.ptr, i64 %idx.ext
  store i8 0, ptr %add.ptr14, align 1, !tbaa !5
  %add.ptr15 = getelementptr inbounds i8, ptr %p.0, i64 -1
  br label %for.inc16

for.inc16:                                        ; preds = %for.cond, %land.lhs.true, %for.end
  %p.1 = phi ptr [ %add.ptr15, %for.end ], [ %p.0, %land.lhs.true ], [ %p.0, %for.cond ]
  %incdec.ptr17 = getelementptr inbounds nuw i8, ptr %p.1, i64 1
  br label %for.cond, !llvm.loop !12

for.end18:                                        ; preds = %for.cond
  %call = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %str)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %str = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef nonnull align 16 captures(none) dereferenceable(100) %str) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(100) %str, i64 noundef 100)
  call void @_Z3delPc(ptr noundef nonnull align 16 dereferenceable(100) %str)
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef nonnull captures(none) %str) #5
  ret i32 0
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #0 align 2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind willreturn }
attributes #5 = { nounwind }

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
!8 = !{}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
