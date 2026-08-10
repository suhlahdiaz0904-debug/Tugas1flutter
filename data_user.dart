import 'package:belajar_flutter/Dokumen%20Pendukung%20TUGAS/Tugas12/user_model.dart';
import 'package:belajar_flutter/day18/database/db_helper.dart';
import 'package:flutter/material.dart';

class DataUserDay12 extends StatefulWidget {
  const DataUserDay12({super.key});

  @override
  State<DataUserDay12> createState() => _DataUserDay12State();
}

class _DataUserDay12State extends State<DataUserDay12> {
  void _refreshList() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Pengguna'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<List<UserModel>>(
              future: DBHelper().getAllUsers(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return Center(
                    child: Text('Terjadi kesalahan: ${snapshot.error}'),
                  );
                }
                if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Center(child: Text('Tidak ada data pengguna.'));
                }

                final daftarPengguna = snapshot.data!;

                return ListView.builder(
                  itemCount: daftarPengguna.length,
                  itemBuilder: (context, index) {
                    final user = daftarPengguna[index];
                    return Card(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 6,
                      ),
                      child: ListTile(
                        leading: const CircleAvatar(child: Icon(Icons.person)),
                        title: Text(user.email),
                        subtitle: Text('ID: ${user.id ?? '-'}'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {
                                _showBottomSheet(context, user);
                              },
                              icon: const Icon(Icons.edit),
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete, color: Colors.red),
                              onPressed: () async {
                                if (user.id != null) {
                                  await DBHelper().deleteUser(user.id!);
                                  _refreshList();

                                  if (context.mounted) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('Data berhasil dihapus'),
                                      ),
                                    );
                                  }
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddUserBottomSheet(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showAddUserBottomSheet(BuildContext context) {
    final namaController = TextEditingController();
    final emailController = TextEditingController();
    final noHpController = TextEditingController();
    final passwordController = TextEditingController();
    final sekolahController = TextEditingController();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            left: 16,
            right: 16,
            top: 16,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Tambah Pengguna',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: namaController,
                  decoration: const InputDecoration(
                    labelText: 'Nama',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: noHpController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    labelText: 'Nomor HP',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: sekolahController,
                  decoration: const InputDecoration(
                    labelText: 'Asal Sekolah / Kampus / Organisasi',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () async {
                      if (emailController.text.trim().isEmpty ||
                          passwordController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Email dan password harus diisi'),
                          ),
                        );
                        return;
                      }

                      final pengguna = UserModel(
                        email: emailController.text.trim(),
                        password: passwordController.text,
                      );

                      final success = await DBHelper().registerUser(pengguna);

                      if (!context.mounted) return;

                      if (success) {
                        Navigator.pop(context);
                        _refreshList();
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Data berhasil ditambahkan'),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Email sudah digunakan / Gagal'),
                          ),
                        );
                      }
                    },
                    icon: const Icon(Icons.add),
                    label: const Text('Tambah Pengguna'),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showBottomSheet(BuildContext context, UserModel user) {
    final namaController = TextEditingController();
    final emailController = TextEditingController(text: user.email);
    final noHpController = TextEditingController();
    final passwordController = TextEditingController(text: user.password);
    final sekolahController = TextEditingController();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            left: 16,
            right: 16,
            top: 16,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Kelola Pengguna',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: namaController,
                  decoration: const InputDecoration(
                    labelText: 'Nama',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: noHpController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    labelText: 'Nomor HP',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: sekolahController,
                  decoration: const InputDecoration(
                    labelText: 'Asal Sekolah / Kampus / Organisasi',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      icon: const Icon(Icons.edit, color: Colors.white),
                      label: const Text(
                        'Update',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () async {
                        if (user.id != null) {
                          final updatedUser = UserModel(
                            id: user.id,
                            email: emailController.text.trim(),
                            password: passwordController.text,
                          );

                          final success = await DBHelper().updateUser(
                            updatedUser,
                          );

                          if (success && context.mounted) {
                            Navigator.pop(context);
                            _refreshList();
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Data berhasil diperbarui'),
                              ),
                            );
                          }
                        }
                      },
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      icon: const Icon(Icons.delete, color: Colors.white),
                      label: const Text(
                        'Delete',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () async {
                        if (user.id != null) {
                          await DBHelper().deleteUser(user.id!);

                          if (context.mounted) {
                            Navigator.pop(context);
                            _refreshList();
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Data berhasil dihapus'),
                              ),
                            );
                          }
                        }
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }
}
